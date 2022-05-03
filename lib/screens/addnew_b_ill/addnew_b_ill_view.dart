import 'dart:convert';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/model/ProductDataModel.dart';
import '../../model/CustomerListModel.dart';
import '../../model/SearchBillModel.dart';
import '../../themes/mythemes.dart';
import '../DrawerScreen.dart';
import '../home/home_logic.dart';
import 'addnew_b_ill_logic.dart';

class AddnewBIllPage extends StatelessWidget {
  final controller = Get.put(AddnewBIllLogic());
  final state = Get.find<AddnewBIllLogic>().state;
  final controller2 = Get.put(HomeLogic());
  late BuildContext context;

  var one = Get.arguments;

  @override
  Widget build(BuildContext context) {
    if (one != null) {
      print(one["from"].toString());
      if (one["from"] == "fromEditBill") {
        BillData? data = one["billdata"] != null
            ? billdataFromJson(one['billdata'].toString())
            : null;
        if (data != null) {
          controller.initEditData(data);
        }
      }
    } else {
      controller.generateBillNumber(context);
      controller.getcustomerList(context, "");
    }

    this.context = context;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
      ),
      drawer: CustomDrawer(),
      body: Container(
        child: ListView(
          children: [
            SearchCustomer(),
            InvoiceNumber(),
            customerName(),
            customerAddress(),
            pricetype(),
            billNumber(),
            billDate(context),
            customerEmail(),
            customerMobile(),
            term(),
            barcodeScan(),
            showProductTable(), // product table
            paymentRecieved(),
            paymentMethod(),
            paymentDetail(),
            billSubTotal(),
            discountpercentage(),
            discountAmount(),
            BillGrandTotal(),
            commenButton()
          ],
        ),
      ),
    );
  }

  SearchCustomer() {
    return Obx(() {
      return DropdownSearch<CustomerData>(
        mode: Mode.MENU,
        items: controller.customerList.value.data,
        itemAsString: (CustomerData? data) => data!.customerName.toString(),
        dropdownSearchDecoration: Themes.textFieldDecoration(hint: "Customer"),
        onChanged: (CustomerData? value) {
          controller.selectCustomerValue(value!);
        },
        showSearchBox: true,
      ).marginOnly(
        left: 20,
        top: 10,
        right: 20,
        bottom: 10,
      );
    });
  }

  InvoiceNumber() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.invoiceNumber,
      decoration: Themes.textFieldDecoration(hint: "Invoice Number"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  customerName() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.customerName,
      decoration: Themes.textFieldDecoration(hint: "Customer Name"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  customerAddress() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.customerAddress,
      decoration: Themes.textFieldDecoration(hint: "Customer Address"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  billNumber() {
    return TextField(
      style: Themes.textFieldTextStyle,
      enabled: false,
      controller: controller.billNumber,
      decoration: Themes.textFieldDecoration(hint: "Bill No"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  customerEmail() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.customerEmail,
      decoration: Themes.textFieldDecoration(hint: "Customer Email"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  customerMobile() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.customermobile,
      decoration: Themes.textFieldDecoration(hint: "Customer Mobile"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  barcodeScan() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: OutlinedButton(
        onPressed: () {
          controller.scanBarcode(context);
        },
        child: Text(
          "Scan Barcode",
          style: TextStyle(fontSize: 16),
        ),
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }

  pricetype() {
    return Obx(
      () {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(5),
          ),
          child: DropdownButton(
                  isExpanded: true,
                  underline: Container(),
                  iconSize: 24,
                  elevation: 16,
                  value: controller.priceValue.value.toString(),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  onChanged: (newValue) {
                    controller.setPriceType(newValue.toString());
                  },
                  items: controller.pricetypeList.map((value) {
                    return DropdownMenuItem(
                      value: value.toString(),
                      child: Container(
                        child: Text(value.toString()),
                      ),
                    );
                  }).toList())
              .marginOnly(left: 10, right: 10),
        ).marginOnly(left: 20, right: 20, top: 10);
      },
    );
  }

  term() {
    return Obx(
      () {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(5),
          ),
          child: DropdownButton(
            isExpanded: true,
            underline: Container(),
            iconSize: 24,
            elevation: 16,
            value: controller.termValue.value.toString(),
            icon: const Icon(Icons.keyboard_arrow_down),
            onChanged: (newValue) {
              controller.setTerm(newValue.toString());
            },
            items: controller.termList.map((value) {
              return DropdownMenuItem(
                value: value.toString(),
                child: Container(
                  child: Text(value.toString()),
                ),
              );
            }).toList(),
          ).marginOnly(left: 10, right: 10),
        ).marginOnly(left: 20, right: 20, top: 10);
      },
    );
  }

  billDate(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: <Widget>[
        Container(
          height: 50,
          child: TextField(
            scrollPadding: EdgeInsets.only(bottom: 40),
            controller: controller.billDate,
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black),
            decoration: Themes.textFieldDecoration2(hint: "Bill Date"),
          ),
        ),
        IconButton(
          icon: Icon(Icons.date_range, color: Colors.redAccent.shade700),
          onPressed: () {
            print("clicked");
            billDatepopup(context);
          },
        ),
      ],
    ).marginOnly(
      left: 20,
      right: 20,
      top: 10,
      bottom: 10,
    );
  }

  Future<void> billDatepopup(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: controller.selectedBillDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != controller.selectedBillDate) {
      controller.loginFromDateSet(picked);
    }
  }

  paymentRecieved() {
    return Obx(
      () {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(5),
          ),
          child: DropdownButton(
            isExpanded: true,
            underline: Container(),
            iconSize: 24,
            elevation: 16,
            value: controller.paymentRecivedValue.value,
            icon: const Icon(Icons.keyboard_arrow_down),
            onChanged: (newValue) {
              controller.setPaymentRecieved(newValue.toString());
            },
            items: controller.paymentRecievedList.map((value) {
              return DropdownMenuItem(
                value: value.toString(),
                child: Container(
                  child: Text(value.toString()),
                ),
              );
            }).toList(),
          ).marginOnly(left: 10, right: 10),
        ).marginOnly(left: 20, right: 20, top: 10);
      },
    );
  }

  paymentMethod() {
    return Obx(
      () {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(5),
          ),
          child: DropdownButton(
            isExpanded: true,
            underline: Container(),
            iconSize: 24,
            elevation: 16,
            value: controller.paymentMethodValue.value,
            icon: const Icon(Icons.keyboard_arrow_down),
            onChanged: (newValue) {
              controller.setPaymentMethod(newValue.toString());
            },
            items: controller.paymentMethodList.map((value) {
              return DropdownMenuItem(
                value: value.toString(),
                child: Container(
                  child: Text(value.toString()),
                ),
              );
            }).toList(),
          ).marginOnly(left: 10, right: 10),
        ).marginOnly(left: 20, right: 20, top: 10);
      },
    );
  }

  paymentDetail() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.payment_detail,
      decoration: Themes.textFieldDecoration(hint: "Payment Detail"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  billSubTotal() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.bill_sub_total,
      enabled: false,
      decoration: Themes.textFieldDecoration(hint: "Bill Sub Total"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  discountpercentage() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.discountPercentage,
      keyboardType: TextInputType.number,
      onChanged: (t) {
        controller.countDiscountAmount(t);
      },
      decoration: Themes.textFieldDecoration(hint: "Discount Percentage"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  discountAmount() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.discountAmount,
      decoration: Themes.textFieldDecoration(hint: "Discount Amount"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  BillGrandTotal() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.billGrandTotal,
      enabled: false,
      decoration: Themes.textFieldDecoration(hint: "Bill Grand Total"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  commenButton() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.redAccent.shade700,
        ),
        onPressed: () {
          controller.performLoginClick(context);
        },
        child: const Text(
          "Save",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }

  showProductTable() {
    return GetX<AddnewBIllLogic>(builder: (ix) {
      List<TableRow> data = [
        TableRow(children: [
          Center(
            child: Text(
              'Barcode No',
              style: Themes.tableTitalColor,
              textAlign: TextAlign.center,
            ),
          ).marginAll(7),
          Center(
            child: Text('Product SKU',
                style: Themes.tableTitalColor, textAlign: TextAlign.center),
          ).marginAll(7),
          Center(
            child: Text('Price',
                style: Themes.tableTitalColor, textAlign: TextAlign.center),
          ).marginAll(7),
          Center(
            child: Text('',
                style: Themes.tableTitalColor, textAlign: TextAlign.center),
          ).marginAll(7)
        ])
      ];

      if (controller.items.value != null && controller.items.value.isNotEmpty){
        for(int i=0;i<controller.items.value.length;i++){
          data.add(getTableRow(controller.items.value[i],i));
        }
      }
      return Container(
        child: Table(
          columnWidths: {
            0: FlexColumnWidth(4),
            1: FlexColumnWidth(4),
            2: FlexColumnWidth(4),
            3: FlexColumnWidth(1.5),
          },
          border: TableBorder.all(),
          children: data,
        ),
      ).marginOnly(
        left: 20,
        top: 10,
        right: 20,
        bottom: 10,
      );
    });
  }

  TableRow getTableRow(ProductDataModel e, int index) {
    //controller.setTotalValue(e.data!.targetPrice.toString());
    if (e.data == null) {
      return TableRow(children: [
        Center(
          child: Text("",
              textAlign: TextAlign.center, style: Themes.tableTitalColor),
        ).marginAll(7),
        Center(
          child: Text("",
              textAlign: TextAlign.center, style: Themes.tableTitalColor),
        ).marginAll(7),
        Center(
          child: Text("",
              textAlign: TextAlign.center, style: Themes.tableTitalColor),
        ).marginAll(7),
        Center(
          child: Text("",
              textAlign: TextAlign.center, style: Themes.tableTitalColor),
        ).marginAll(7),
      ]);
    }
      return TableRow(
        children: [
      Center(
        child: Text(e.data!.productBarcode.toString(),
            textAlign: TextAlign.center, style: Themes.tableTitalColor),
      ).marginAll(7),
      Center(
        child: Text(e.data!.productSku.toString(),
            textAlign: TextAlign.center, style: Themes.tableTitalColor),
      ).marginAll(7),
      Center(
        child: Text(e.data!.targetPrice.toString(),
            textAlign: TextAlign.center, style: Themes.tableTitalColor),
      ).marginAll(7),
      Center(
        child: CupertinoButton(
          child: Center(
            child: Icon(
              Icons.close,
              size: 20,
            )
          ),
          onPressed: () {
            controller.removeProductFromList(index);
          }),),
    ],);
  }
}
