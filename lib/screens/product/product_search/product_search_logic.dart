import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../model/CompanyListModel.dart';
import '../../../model/ProductListModel.dart';
import '../../../network/DioServiceSecond.dart';
import '../../../network/DioServices.dart';
import '../../../other/Constants.dart';
import '../../../themes/routes.dart';
import '../../../widgets/LoadingDiaog.dart';
import 'state.dart';

class Product_searchLogic extends GetxController {
  var diosecond = DioServiceSecond();

  final Product_searchState state = Product_searchState();
  TextEditingController productsku = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController fromdate = TextEditingController();
  TextEditingController todate = TextEditingController();
  TextEditingController mintargetprice = TextEditingController();
  TextEditingController maxtargetprice = TextEditingController();
  TextEditingController minquantity = TextEditingController();
  TextEditingController maxquantity = TextEditingController();

  final companyValue = 'Company'.obs;
  List<String> companyList = [
    'Company',
    'Kadleefashion',
    'Khantil',
    'Vandvshop',
  ];
  var companytypeint = 0;

  void setcompanyType(String value) {
    companyValue.value = value.toString();
    if (value == "Kadleefashion") {
      companytypeint = 1;
    } else if (value == "Khantil") {
      companytypeint = 2;
    } else if (value == "Vandvshop") {
      companytypeint = 3;
    }
  }

  final productstatusValue = 'product status'.obs;
  List<String> productstatusList = [
    'product status',
    'In stock',
    'out of stock',
    'disable',
  ];
  var productstatustypeint = -1;

  void setproductstatusType(String value) {
    productstatusValue.value = value.toString();
    if (value == "In stock") {
      productstatustypeint = 1;
    } else if (value == "out of stock") {
      productstatustypeint = 3;
    } else if (value == "disable") {
      productstatustypeint = 0;
    }
  }

  void changeToDate(DateTime picked) {
    todate.text =
        "${getDatewithzero(picked.day)}/${getDatewithzero(picked.month)}/${picked.year}";
  }

  void chageFromDate(DateTime picked) {
    fromdate.text =
        "${getDatewithzero(picked.day)}/${getDatewithzero(picked.month)}/${picked.year}";
  }

  var productlist = ProductListModel().obs;

  var dio = DioService();
  var companylist = CompanyListModel().obs;

  Future<CompanyListModel?> getCompanyList(
      BuildContext context) {
    return dio.getCompanyList(
            id: "all",
            company_name: "",
            company_mobile: "",
            company_email: "",
            company_status: "")
        .then((it) {
      if (it != null) {
        companylist.value = it;
        return it;
      } else {}
    });
  }

  void performEditUserClick(BuildContext context, ProductData data) {
    // Get.toNamed()
  }


  var companyid = "";
  void selectedCompanyValue(Data data) {
    companyid =  data.companyId.toString();
  }

  void performLoginClickSearch(BuildContext context) {
    LoadingDialog(context).startLoading();
    diosecond.getProductList(
            sku: productsku.text.toString(),
            godown_location: "",
            min_price: mintargetprice.text.toString(),
            max_price: maxtargetprice.text.toString(),
            min_qty: minquantity.text.toString(),
            max_qty: maxquantity.text.toString(),
            date_from: fromdate.text.toString(),
            date_to: todate.text.toString(),
            product_status: productstatustypeint == -1 ? "" : productstatustypeint.toString(),
            company_id: companyid.toString())
        .then((value) {
      if (value != null) {
        LoadingDialog(context).stopLoading();
        productlist.value = value;
        Get.toNamed(product_list);
        clearData();
      }
    });
  }

  void clearData() {

  }
}
