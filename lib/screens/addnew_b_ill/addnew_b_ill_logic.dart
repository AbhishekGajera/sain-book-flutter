import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

import '../../model/CustomerListModel.dart';

import '../../model/ProductDataModel.dart';
import '../../model/ProductListModel.dart';
import '../../model/ProductListModelSample.dart';
import '../../model/SearchBillModel.dart';
import '../../network/DioServiceSecond.dart';
import '../../network/DioServices.dart';
import '../../other/Constants.dart';

import '../../themes/SassionManager.dart';
import '../../widgets/widgets.dart';
import 'addnew_b_ill_state.dart';

class AddnewBIllLogic extends GetxController {
  final AddnewBIllState state = AddnewBIllState();
  var diosecond = DioServiceSecond();
  var dio = DioService();

  var customerList = CustomerListModel().obs;

  TextEditingController invoiceNumber = TextEditingController();
  TextEditingController customerName = TextEditingController();
  TextEditingController customerAddress = TextEditingController();
  TextEditingController billNumber = TextEditingController();
  TextEditingController customerEmail = TextEditingController();
  TextEditingController customermobile = TextEditingController();
  TextEditingController payment_detail = TextEditingController();
  TextEditingController bill_sub_total = TextEditingController();
  TextEditingController discountPercentage = TextEditingController();
  TextEditingController discountAmount = TextEditingController();
  TextEditingController billGrandTotal = TextEditingController();
  TextEditingController billDate = TextEditingController()..text = "";

  @override
  void onInit() {
    super.onInit();
  }

  final priceValue = 'Target Price T'.obs;
  List<String> pricetypeList = [
    'Target Price T',
    'Purchase price P',
    'Wholesale price W',
    'Retail Price R'
  ];
  var pricetypeint = 0;

  void setPriceType(String value) {
    priceValue.value = value.toString();
  }

  final termValue = 'None'.obs;
  List<String> termList = [
    'None',
    'Due 10',
    'Due 15',
    'Due 30',
    'Due 45',
    'Due 90'
  ];
  var termint = 0;

  void setTerm(String value) {
    termValue.value = value.toString();
  }

  final paymentRecivedValue = 'Payment Recieved'.obs;
  List<String> paymentRecievedList = ['Payment Recieved', 'No', "Yes"];

  var paymentrecieveint = 0;

  void setPaymentRecieved(String value) {
    paymentRecivedValue.value = value.toString();
    if (value == "Yes") {
      paymentrecieveint = 1;
    } else if (value == "No") {
      paymentrecieveint = 2;
    }
  }

  final paymentMethodValue = 'Select Payment Method'.obs;
  List<String> paymentMethodList = [
    'Select Payment Method',
    "Cash",
    "Cheque",
    "Credit/Debit Card",
    "Bank Transfer",
  ];

  var paymentvalueint = 0;

  void setPaymentMethod(String value) {
    paymentMethodValue.value = value.toString();
    if (value == "Cash") {
      paymentvalueint = 1;
    } else if (value == "Cheque") {
      paymentvalueint = 2;
    } else if (value == "Credit/Debit Card") {
      paymentvalueint = 3;
    } else if (value == "Bank Transfer") {
      paymentvalueint = 4;
    }
  }

  DateTime selectedBillDate = DateTime.now();

  void loginFromDateSet(DateTime picked) {
    selectedBillDate = picked;
    billDate.text =
        "${getDatewithzero(picked.day)}/${getDatewithzero(picked.month)}/${picked.year}";
  }

  Future<void> scanBarcode(BuildContext context) async {
    String barcode = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666", "Cancel", false, ScanMode.DEFAULT);
    if (barcode != "-1") getProduct(barcode);
    print("------------------------------------------>" + barcode);
  }

  void generateBillNumber(BuildContext context) {
    diosecond.getBilNumber().then((it) {
      if (it != null) {
        billNumber.text = it.data.toString();
      } else {
        Widgets.showSnackbar(
          context,
          "Something Wrong",
          Colors.green,
        );
      }
    }).catchError((onError) {
      Widgets.showSnackbar(
        context,
        "Something Wrong",
        Colors.red.shade700,
      );
    });
  }

  Future<CustomerListModel?> getcustomerList(
      BuildContext context, String value) {
    return dio
        .getCustomerList(
            id: "all",
            customer_name: "",
            customer_mobile: "",
            customer_email: "",
            customer_status: "")
        .then((it) {
      if (it != null) {
        customerList.value = it;
        return it;
      } else {}
    });
  }

  var selectedCustomer = CustomerData().obs;

  void selectCustomerValue(CustomerData value) {
    selectedCustomer.value = value;
    customerName.text = value.customerName.toString();
    customerEmail.text = value.customerEmail.toString();
    customerAddress.text = value.customerAddress.toString();
    customermobile.text = value.customerMobile.toString();
    termint = int.parse(value.termId.toString());
    termValue.value = termList[int.parse(termint.toString())].toString();
  }

  RxList<ProductDataModel> items = RxList<ProductDataModel>();

  void getProduct(String barcode) {
    diosecond.getBarCode(barcode: barcode).then((it) {
      if (it != null) {
        items.add(it);
        useProductData(it);
      }
    });
  }

  useProductData(ProductDataModel it) {
    var billtotal =
        bill_sub_total.text.isNotEmpty && bill_sub_total.text != null
            ? int.parse(bill_sub_total.text.toString())
            : 0;
    var targetprice =
        it.data!.targetPrice != null && it.data!.targetPrice!.isNotEmpty
            ? int.parse(it.data!.targetPrice.toString())
            : 0;
    var billsubtotal = billtotal + targetprice;
    bill_sub_total.text = billsubtotal.toString();
  }

  var productid = [];
  var barcodelist = [];
  var productsku = [];
  var targetprice = [];
  var productbarcodeid = [];
  var modifydate = "";

  void extractDataFromProduct() {
    productid.clear();
    barcodelist.clear();
    productsku.clear();
    targetprice.clear();
    productbarcodeid.clear();

    for (int i = 0; i <= items.value.length - 1; i++) {
      productid.add(items.value[i].data!.productId.toString());
      barcodelist.add(items.value[i].data!.productBarcode.toString());
      productsku.add(items.value[i].data!.productSku.toString());
      targetprice.add(items.value[i].data!.targetPrice.toString());
      productbarcodeid.add(items.value[i].data!.productBarcodeId);
      modifydate = items.value[i].data!.modifyDate.toString();
    }
    //   items.value.map((e) => extractData(e));
  }

  extractData(ProductDataModel e) {
    productid.add(e.data!.productId.toString());
    barcodelist.add(e.data!.productBarcode.toString());
    productsku.add(e.data!.productSku.toString());
    targetprice.add(e.data!.targetPrice.toString());
    productbarcodeid.add(e.data!.productBarcodeId);
    modifydate = e.data!.modifyDate.toString();
  }

  void performLoginClick(BuildContext context) {
    extractDataFromProduct();
    SassionManager.getString(key: SassionConst.userid).then((value) {
      print("--------billDate----------------->" + billDate.text.toString());
      print("-------termint------------------>" + termint.toString());
      print("----------invoiceNumber--------------->" +
          invoiceNumber.text.toString());
      print("----------selectedCustomer--------------->" +
          selectedCustomer.value.customerId.toString());
      print("-------customerName------------------>" +
          customerName.text.toString());
      print("-----------customerEmail-------------->" +
          customerEmail.text.toString());
      print("----------customermobile--------------->" +
          customermobile.text.toString());
      print("-----------customerAddress-------------->" +
          customerAddress.text.toString());
      print("----------bill_sub_total--------------->" +
          bill_sub_total.text.toString());
      print("----------paymentrecieveint--------------->" +
          paymentrecieveint.toString());
      print("----------paymentvalueint--------------->" +
          paymentvalueint.toString());
      print("----------payment_detail--------------->" +
          payment_detail.text.toString());
      print("----------modifydate--------------->" + modifydate.toString());
      print("----------value--------------->" + value.toString());
      print("----------productid--------------->" + productid.toString());
      print("----------barcodelist--------------->" + barcodelist.toString());
      print("----------productsku--------------->" + productsku.toString());
      print("----------targetprice--------------->" + targetprice.toString());
      print("----------productbarcodeid--------------->" +
          productbarcodeid.toString());
      diosecond
          .addnewBill(
              bill_date: billDate.text.toString(),
              term_id: termint.toString(),
              invoice_no: invoiceNumber.text.toString(),
              customer_id: selectedCustomer.value.customerId != null
                  ? selectedCustomer.value.customerId.toString()
                  : "",
              customer_name: customerName.text.toString(),
              customer_email: customerEmail.text.toString(),
              customer_mobile: customermobile.text.toString(),
              customer_address: customerAddress.text.toString(),
              bill_sub_total: bill_sub_total.text.toString(),
              discount: percentage.toString(),
              discount_amount: discountAmount.text.toString(),
              bill_grand_total: billGrandTotal.text.toString(),
              payment_receive: paymentrecieveint.toString(),
              payment_method:
                  paymentvalueint == 0 ? "" : paymentvalueint.toString(),
              payment_method_detail: payment_detail.text.toString(),
              modify_date: modifydate,
              user_id: value.toString(),
              product_id: productid.toString(),
              product_barcode: barcodelist.toString(),
              product_sku: productsku.toString(),
              target_price: targetprice.toString(),
              product_barcode_id: productbarcodeid.toString())
          .then((value) {
        clearData();
        Get.back();
      });
    });
  }

  var percentage = 0;

  void countDiscountAmount(String t) {
    percentage = int.parse(t);
    double billSubTotal = double.parse(bill_sub_total.text.trim().toString());
    var discount_amount = (billSubTotal / 100) * percentage;
    var billgrandtotal = billSubTotal - discount_amount;
    discountAmount.text = discount_amount.toString();
    billGrandTotal.text = billgrandtotal.toString();
  }

  void setTotalValue(String targetPrice) {
    var past = int.parse(bill_sub_total.text);
    bill_sub_total.text = (past + int.parse(targetPrice.toString())).toString();
  }

  void clearData() {
    items.clear();
    productid.clear();
    barcodelist.clear();
    productsku.clear();
    targetprice.clear();
    productbarcodeid.clear();
    modifydate = "";
    invoiceNumber.text = "";
    customerName.text = "";
    customerAddress.text = "";
    billNumber.text = "";
    customerEmail.text = "";
    customermobile.text = "";
    payment_detail.text = "";
    bill_sub_total.text = "";
    discountPercentage.text = "";
    discountAmount.text = "";
    billGrandTotal.text = "";
    billDate.text = "";
    termValue.value = 'None';
    priceValue.value = 'Target Price T';
    paymentRecivedValue.value = 'Payment Recieved';
    paymentMethodValue.value = 'Select Payment Method';
    pricetypeint = 0;
    termint = 0;
    paymentrecieveint = 0;
    paymentvalueint = 0;
  }

  void initEditData(BillData data) {
    clearData();
    billNumber.text = data.customerSellId.toString();
    invoiceNumber.text = data.invoiceNo.toString();
    customerName.text = data.customerName.toString();
    customerAddress.text = data.customerAddress.toString();
    customerEmail.text =data.customerAddress.toString();
    customermobile.text = data.customerMobile.toString();
    payment_detail.text = data.paymentMethodDetail.toString();
    bill_sub_total.text = data.billSubTotal.toString();
    discountPercentage.text = data.discountPer.toString();
    discountAmount.text = data.discountAmount.toString();
    billGrandTotal.text = data.billGrandTotal.toString();
    billDate.text = data.billDate.toString();
  }

  void removeProductFromList(int index) {
    //items[index]
    items.removeAt(index);
  }
}
