import 'dart:convert';

AddCompanyModel addCompanyModelFromJson(String str) => AddCompanyModel.fromJson(json.decode(str));
String addCompanyModelToJson(AddCompanyModel data) => json.encode(data.toJson());
class AddCompanyModel {
  AddCompanyModel({
      int? flag, 
      String? msg, 
      Data? data,}){
    _flag = flag;
    _msg = msg;
    _data = data;
}

  AddCompanyModel.fromJson(dynamic json) {
    _flag = json['flag'];
    _msg = json['msg'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  int? _flag;
  String? _msg;
  Data? _data;

  int? get flag => _flag;
  String? get msg => _msg;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['flag'] = _flag;
    map['msg'] = _msg;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// company_name : "test2"
/// code : "test 2"
/// company_email : "test 2"
/// company_mobile : "test 2"
/// company_website : "test 2"
/// company_address : "test2 "
/// company_status : "1"
/// modify_date : "2022-04-10 17:47:50"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? companyName, 
      String? code, 
      String? companyEmail, 
      String? companyMobile, 
      String? companyWebsite, 
      String? companyAddress, 
      String? companyStatus, 
      String? modifyDate,}){
    _companyName = companyName;
    _code = code;
    _companyEmail = companyEmail;
    _companyMobile = companyMobile;
    _companyWebsite = companyWebsite;
    _companyAddress = companyAddress;
    _companyStatus = companyStatus;
    _modifyDate = modifyDate;
}

  Data.fromJson(dynamic json) {
    _companyName = json['company_name'];
    _code = json['code'];
    _companyEmail = json['company_email'];
    _companyMobile = json['company_mobile'];
    _companyWebsite = json['company_website'];
    _companyAddress = json['company_address'];
    _companyStatus = json['company_status'];
    _modifyDate = json['modify_date'];
  }
  String? _companyName;
  String? _code;
  String? _companyEmail;
  String? _companyMobile;
  String? _companyWebsite;
  String? _companyAddress;
  String? _companyStatus;
  String? _modifyDate;

  String? get companyName => _companyName;
  String? get code => _code;
  String? get companyEmail => _companyEmail;
  String? get companyMobile => _companyMobile;
  String? get companyWebsite => _companyWebsite;
  String? get companyAddress => _companyAddress;
  String? get companyStatus => _companyStatus;
  String? get modifyDate => _modifyDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['company_name'] = _companyName;
    map['code'] = _code;
    map['company_email'] = _companyEmail;
    map['company_mobile'] = _companyMobile;
    map['company_website'] = _companyWebsite;
    map['company_address'] = _companyAddress;
    map['company_status'] = _companyStatus;
    map['modify_date'] = _modifyDate;
    return map;
  }

}