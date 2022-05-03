import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:sain_book_project/model/AddCompanyModel.dart';
import 'package:sain_book_project/model/CourierListModel.dart';
import 'package:sain_book_project/network/NetworkConst.dart';
import 'package:sain_book_project/network/UrlConst.dart';

import '../model/AddCourierModel.dart';
import '../model/AddCustomerModel.dart';
import '../model/CompanyListModel.dart';
import '../model/CustomerListModel.dart';
import '../model/LoginModel.dart';
import '../model/SaveUserModel.dart';
import '../model/UserListModel.dart';
import '../model/WebsiteListModel.dart';
import '../model/saveWebsiteModel.dart';

class DioService {
  var dio = Dio();

  Future<Login?> login({
    required String username,
    required String password,
  }) async {
    try {
      var formData = FormData.fromMap({
        'email': username,
        'pass': password,
      });
      Response response = await dio.post(getUrl(endpoint: endPoint.login),
          data: formData,
          options: Options(headers: NetConsts.aurthorizationheader));

      var encoded = json.encode(response.data);
      print(encoded.toString());
      Login model = loginFromJson(encoded.toString());
      return model;
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }

  Future<SaveUserModel?> saveUser({
    required String firstname,
    required String lastname,
    required String user_email,
    required String password,
    required String repassword,
    required String mobile_no,
    required String gender,
    required String user_type_id,
    required String company_id,
    required String default_status,
    required String user_status,
    required String image,
    required String user_id,
  }) async {
    String fileName = image.split('/').last;
    try {
      var formData = FormData.fromMap({
        'firstname': firstname,
        'lastname': lastname,
        'user_email': user_email,
        'password': password,
        'repassword': repassword,
        'mobile_no': mobile_no,
        'gender': gender,
        'user_type_id': user_type_id,
        'company_id': company_id,
        'default_status': default_status,
        'user_status': user_status,
        if(image.isNotEmpty)'image': await MultipartFile.fromFile(File(image).path, filename: fileName),
        'user_id': user_id,
      });
      Response response = await dio.post(getUrl(endpoint: endPoint.saveuser),
          data: formData,
          options: Options(headers: NetConsts.aurthorizationheader));
      var encoded = json.encode(response.data);
      print(encoded.toString());
      SaveUserModel model = saveUserModelFromJson(encoded.toString());
      return model;
    } on DioError catch (e) {
      print(e);
      return Future.error("error");

    }
  }

  Future<AddCompanyModel?> AddCompany({
    required String company_name,
    required String code,
    required String company_email,
    required String company_mobile,
    required String company_website,
    required String company_address,
    required String company_status,
    required String company_id,
  }) async {
    try {
      var formData = FormData.fromMap({
        'company_name': company_name,
        'code': code,
        'company_email': company_email,
        'company_mobile': company_mobile,
        'company_website': company_website,
        'company_address': company_address,
        'company_status': company_status,
        'company_id': company_id,
      });
      Response response = await dio.post(getUrl(endpoint: endPoint.savecompany),
          data: formData,
          options: Options(headers: NetConsts.aurthorizationheader));
      var encoded = json.encode(response.data);
      print(encoded.toString());
      AddCompanyModel model = addCompanyModelFromJson(encoded.toString());
      return model;
    } on DioError catch (e) {
      print(e);
      return Future.error("error");
    }
  }

  Future<AddCourierModel?> AddCurier({
    required String courier_name,
    required String courier_website,
    required String cod,
    required String rate,
    required String courier_status,
  }) async {
    try {
      var formData = FormData.fromMap({
        'courier_name': courier_name,
        'courier_website': courier_website,
        'cod': cod,
        'rate': rate,
        'courier_status': courier_status,
      });
      Response response = await dio.post(getUrl(endpoint: endPoint.savecourier),
          data: formData,
          options: Options(headers: NetConsts.aurthorizationheader));
      var encoded = json.encode(response.data);
      print(encoded.toString());
      AddCourierModel model = addCourierModelFromJson(encoded.toString());
      return model;
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }

  Future<AddCustomerModel?> addCustomer({
    required String customer_name,
    required String customer_email,
    required String customer_mobile,
    required String customer_mobile1,
    required String customer_address,
    required String agency_name,
    required String agency_mobile,
    required String term_id,
    required String customer_status,
    required String customer_id,
  }) async {
    try {
      var formData = FormData.fromMap({
        'customer_name': customer_name,
        'customer_email': customer_email,
        'customer_mobile': customer_mobile,
        'customer_mobile1': customer_mobile1,
        'customer_address': customer_address,
        'agency_name': agency_name,
        'agency_mobile': agency_mobile,
        'term_id': term_id,
        'customer_status': customer_status,
        'customer_id': customer_id,
      });

      Response response = await dio.post(
          getUrl(endpoint: endPoint.savecustomer),
          data: formData,
          options: Options(headers: NetConsts.aurthorizationheader));
      var encoded = json.encode(response.data);
      print(encoded.toString());
      AddCustomerModel model = addCustomerModelFromJson(encoded.toString());
      return model;
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }

  Future<SaveWebsiteModel?> saveWebsite({
    required String website_name,
    required String website_url,
    required String website_status,
  }) async {
    try {
      var formData = FormData.fromMap({
        'website_name': website_name,
        'website_url': website_url,
        'website_status': website_status,
      });
      Response response = await dio.post(getUrl(endpoint: endPoint.savewebsite),
          data: formData,
          options: Options(headers: NetConsts.aurthorizationheader));
      var encoded = json.encode(response.data);
      print(encoded.toString());
      SaveWebsiteModel model = saveWebsiteModelFromJson(encoded.toString());
      return model;
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }

  Future<UserListModel?> getUserList({
    required String id,
    required String user_email,
    required String user_type_id,
    required String date_from,
    required String date_to,
    required String user_status,
  }) async {
    try {
      var formData = FormData.fromMap({
        'id': id,
        'user_email': user_email,
        'user_type_id': user_type_id,
        'date_from': date_from,
        'date_to': date_to,
        'user_status': user_status,
      });

      Response response = await dio.post(getUrl(endpoint: endPoint.userlist),
          data: formData,
          options: Options(headers: NetConsts.aurthorizationheader));
      var encoded = json.encode(response.data);
      print(encoded.toString());
      UserListModel model = userListModelFromJson(encoded.toString());
      return model;
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }

  Future<CustomerListModel?> getCustomerList({
    required String id,
    required String customer_name,
    required String customer_mobile,
    required String customer_email,
    required String customer_status,
  }) async {
    try {
      var formData = FormData.fromMap({
        'id': id,
        'customer_name': customer_name,
        'customer_mobile': customer_mobile,
        'customer_email': customer_email,
        'customer_status': customer_status,
      });

      Response response = await dio.post(
          getUrl(endpoint: endPoint.customerlist),
          data: formData,
          options: Options(headers: NetConsts.aurthorizationheader));
      var encoded = json.encode(response.data);
      print(encoded.toString());
      CustomerListModel model = customerListModelFromJson(encoded.toString());
      return model;
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }

  Future<WebsiteListModel?> getWebsiteList({
    required String id,
    required String website_name,
    required String website_status,
  }) async {
    try {
      var formData = FormData.fromMap({
        'id': id,
        'website_name': website_name,
        'website_status': website_status,
      });

      Response response = await dio.post(getUrl(endpoint: endPoint.websitelist),
          data: formData,
          options: Options(headers: NetConsts.aurthorizationheader));
      var encoded = json.encode(response.data);
      print(encoded.toString());
      WebsiteListModel model = websiteListModelFromJson(encoded.toString());
      return model;
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }

  Future<CourierListModel?> getCourierList({
    required String id,
    required String courier_name,
    required String cod,
    required String courier_status,
  }) async {
    try {
      var formData = FormData.fromMap({
        'id': id,
        'courier_name': courier_name,
        'cod': cod,
        'courier_status': courier_status,
      });

      Response response = await dio.post(getUrl(endpoint: endPoint.courierlist),
          data: formData,
          options: Options(headers: NetConsts.aurthorizationheader));
      var encoded = json.encode(response.data);
      print(encoded.toString());
      CourierListModel model = courierListModelFromJson(encoded.toString());
      return model;
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }

  Future<CompanyListModel?> getCompanyList({
    required String id,
    required String company_name,
    required String company_mobile,
    required String company_email,
    required String company_status,
  }) async {
    try {
      var formData = FormData.fromMap({
        'id': id,
        'company_name': company_name,
        'company_mobile': company_mobile,
        'company_email': company_email,
        'company_status': company_status,
      });
      Response response = await dio.post(getUrl(endpoint: endPoint.companylist),
          data: formData,
          options: Options(headers: NetConsts.aurthorizationheader));
      var encoded = json.encode(response.data);
      print(encoded.toString());
      CompanyListModel model = companyListModelFromJson(encoded.toString());
      return model;
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }
}
