import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:sain_book_project/model/AddCompanyModel.dart';
import 'package:sain_book_project/network/NetworkConst.dart';
import 'package:sain_book_project/network/UrlConst.dart';

import '../model/AddCourierModel.dart';
import '../model/LoginModel.dart';
import '../model/SaveUserModel.dart';

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
      Response response = await dio.post(
        getUrl(endpoint: endPoint.login),
        data: formData,
        options: Options(
          headers: NetConsts.aurthorizationheader
        )
      );

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
    required File image,
    required String user_id,
  }) async {
    String fileName = image.path.split('/').last;
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
        'image': await MultipartFile.fromFile(image.path, filename:fileName),
        'user_id': user_id,

      });
      Response response = await dio.post(
          getUrl(endpoint: endPoint.saveuser),
          data: formData,
          options: Options(
              headers: NetConsts.aurthorizationheader
          )
      );
      var encoded = json.encode(response.data);
      print(encoded.toString());
      SaveUserModel model = saveUserModelFromJson(encoded.toString());
      return model;
    } on DioError catch (e) {
      print(e);
      return null;
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
      Response response = await dio.post(
          getUrl(endpoint: endPoint.savecompany),
          data: formData,
          options: Options(
              headers: NetConsts.aurthorizationheader
          )
      );
      var encoded = json.encode(response.data);
      print(encoded.toString());
      AddCompanyModel model = addCompanyModelFromJson(encoded.toString());
      return model;
    } on DioError catch (e) {
      print(e);
      return null;
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
      Response response = await dio.post(
          getUrl(endpoint: endPoint.savecourier),
          data: formData,
          options: Options(
              headers: NetConsts.aurthorizationheader
          )
      );
      var encoded = json.encode(response.data);
      print(encoded.toString());
      AddCourierModel model = addCourierModelFromJson(encoded.toString());
      return model;
    } on DioError catch (e) {
      print(e);
      return null;
    }

  }





}
