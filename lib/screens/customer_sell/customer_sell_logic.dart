import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/model/CustomerListModel.dart';
import 'package:sain_book_project/network/DioServices.dart';
import 'package:sain_book_project/other/Constants.dart';

import '../../model/SearchBillModel.dart';
import '../../network/DioServiceSecond.dart';
import '../../themes/routes.dart';
import '../../widgets/LoadingDiaog.dart';
import '../../widgets/widgets.dart';
import 'customer_sell_state.dart';

class Customer_sellLogic extends GetxController {
  var dio = DioService();
  var diosecond = DioServiceSecond();


  final Customer_sellState state = Customer_sellState();

  TextEditingController billNumber = TextEditingController()..text = "";
  TextEditingController customerName = TextEditingController()..text = "";

  TextEditingController fromduedate = TextEditingController()..text = "";
  TextEditingController toduedate = TextEditingController()..text = "";

  TextEditingController companySearch = TextEditingController();
  var label = "Some Label".obs;
  var dummyList = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  DateTime selectedFromDueDate = DateTime.now();
  DateTime selectedToDueDate = DateTime.now();

  void loginFromDateSet(DateTime picked) {
    selectedFromDueDate = picked;
    fromduedate.text =
        "${getDatewithzero(picked.day)}/${getDatewithzero(picked.month)}/${picked.year}";
  }

  void loginToDateSet(DateTime picked) {
    selectedToDueDate = picked;
    toduedate.text =
        "${getDatewithzero(picked.day)}/${getDatewithzero(picked.month)}/${picked.year}";
  }

  final paymentrecieveValue = 'Payment Recieve'.obs;
  List<String> paymentRecieveList = ['Payment Recieve', 'No', 'Yes'];

  var billList = SearchBillModel().obs;
  void performSearch(BuildContext context) {
    LoadingDialog(context).startLoading();
    diosecond.getBill(
          billNumber: billNumber.text.toString(),
          toDueDate: '',
          customername: '',
          paymentRecieve: '',
          fromduedate: '',
          customerName: '',
    ).then((it) {
      billList.value=it!;
      LoadingDialog(context).stopLoading();
      Get.toNamed(customer_sell_list);

    }).catchError((onError){
      Widgets.showSnackbar(
        context,
        "",
        Colors.red,
      );
    });
  }


  void performEditBillSearch(BuildContext context, BillData data) {
    Get.toNamed(addnewBill, arguments: {"from":"fromEditBill","billdata":dataToJson(data).toString()});
  }

  var customer_list_model = CustomerListModel().obs;
  void selectCustomerValue(CustomerData customerData) {

  }

  Future<CustomerListModel?> getcustomerList(
      BuildContext context, String value) {
    return dio.getCustomerList(
        id: "all",
        customer_name: "",
        customer_mobile: "",
        customer_email: "",
        customer_status: "")
        .then((it) {
      if (it != null) {
        customer_list_model.value = it;
        return it;
      } else {}
    });
  }

}
