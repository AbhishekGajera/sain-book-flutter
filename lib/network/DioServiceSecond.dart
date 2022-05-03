import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/BillNumberModel.dart';
import '../model/ProductDataModel.dart';
import '../model/ProductListModel.dart';
import '../model/SearchBillModel.dart';
import 'NetworkConst.dart';
import 'UrlConst.dart';

class DioServiceSecond {
  var dio = Dio();

  Future<ProductDataModel?> getBarCode({required String barcode}) async {
    try {
      var formData = FormData.fromMap({
        'barcode': barcode,
      });
      Response response = await dio.post(getUrl(endpoint: endPoint.get_barcode),
          data: formData,
          options: Options(headers: NetConsts.aurthorizationheader));

      var encoded = json.encode(response.data);
      print(encoded.toString());
      ProductDataModel model = productDataModelFromJson(encoded.toString());
      return model;
    } on DioError catch (e) {
      print(e);
      Future.error("error");
      return null;
    }
  }

  Future<SearchBillModel?> getBill({
    required String billNumber,
    required String customerName,
    required String fromduedate,
    required String toDueDate,
    required String customername,
    required String paymentRecieve}) async {
    try {
      var formData = FormData.fromMap({
        'bill_id': billNumber.trim().isEmpty ? "all" : billNumber.toString(),
      });
      Response response = await dio.post(getUrl(endpoint: endPoint.get_bill),
          data: formData,
          options: Options(headers: NetConsts.aurthorizationheader));

      var encoded = json.encode(response.data);
      print(encoded.toString());
      SearchBillModel model = searchBillModelFromJson(encoded.toString());
      return model;
    } on DioError catch (e) {
      print(e);
      Future.error("error");
      return null;
    }
  }


  Future<BillNumberModel?> getBilNumber() async {
    try {
      Response response = await dio.get(
        getUrl(endpoint: endPoint.bill_number),
        options: Options(headers: NetConsts.aurthorizationheader),
      );
      var encoded = json.encode(response.data);
      print(encoded.toString());
      BillNumberModel model = billNumberModelFromJson(encoded.toString());
      return model;
    } on DioError catch (e) {
      print(e);
      Future.error("error");
      return null;
    }
  }

  Future<BillNumberModel?> addnewBill({
    required String bill_date,
    required String term_id,
    required String invoice_no,
    required String customer_id,
    required String customer_name,
    required String customer_email,
    required String customer_mobile,
    required String customer_address,
    required String bill_sub_total,
    required String discount,
    required String discount_amount,
    required String bill_grand_total,
    required String payment_receive,
    required String payment_method,
    required String payment_method_detail,
    required String modify_date,
    required String user_id,
    required String product_id,
    required String product_barcode,
    required String product_sku,
    required String target_price,
    required String product_barcode_id,
  }) async {
    try {
      var formData = FormData.fromMap({
        "bill_date": bill_date,
        "term_id": term_id,
        "invoice_no": invoice_no,
        "customer_id": customer_id,
        "customer_name": customer_name,
        "customer_email": customer_email,
        "customer_mobile": customer_mobile,
        "customer_address": customer_address,
        "bill_sub_total": bill_sub_total,
        "discount": discount,
        "discount_amount": discount_amount,
        "bill_grand_total": bill_grand_total,
        "payment_receive": payment_receive,
        "payment_method": payment_method,
        "payment_method_detail": payment_method_detail,
        "modify_date": modify_date,
        "user_id": user_id,
        "product_id": product_id,
        "product_barcode": product_barcode,
        "product_sku": product_sku,
        "target_price": target_price,
        "product_barcode_id": product_barcode_id
      });
      Response response = await dio.post(getUrl(endpoint: endPoint.addnew_bill),
          data: formData,
          options: Options(headers: NetConsts.aurthorizationheader));
      var encoded = json.encode(response.data);
      print(encoded.toString());
      BillNumberModel model = billNumberModelFromJson(encoded.toString());
      return model;
    } on DioError catch (e) {
      print(e);
      Future.error("error");
      return null;
    }
  }



  Future<ProductListModel?> getProductList({
    required String sku,
    required String godown_location,
    required String min_price,
    required String max_price,
    required String min_qty,
    required String max_qty,
    required String date_from,
    required String date_to,
    required String product_status,
    required String company_id,
  }) async {
    try {
      var formData = FormData.fromMap({
        "id": "all",
        "sku":sku,
        "godown_location":godown_location,
        "min_price":min_price,
        "max_price":max_price,
        "min_qty":min_qty,
        "max_qty":max_qty,
        "date_from":date_from,
        "date_to":date_to,
        "product_status":product_status,
        "company_id":company_id
      });
      Response response = await dio.post(getUrl(endpoint: endPoint.productlist),
          data: formData,
          options: Options(headers: NetConsts.aurthorizationheader));
      var encoded = json.encode(response.data);
      print(encoded.toString());
      ProductListModel model = productListModelFromJson(encoded.toString());
      return model;
    } on DioError catch (e) {
      print(e);
      Future.error("error");
      return null;
    }
  }
}
