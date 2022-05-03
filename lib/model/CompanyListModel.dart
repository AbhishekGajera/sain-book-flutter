import 'dart:convert';
/// flag : 1
/// msg : "company list."
/// data : [{"company_id":"2","company_name":"helix","code":"helix","company_address":"surat","company_email":"software@khantil.in","company_mobile":"","company_website":"","company_logo":"","ip_security":"0","ip_static":"a:2:{i:0;s:15:\"119.160.198.114\";i:1;s:9:\"127.0.0.1\";}","ip_range":"a:2:{i:0;a:2:{s:5:\"start\";s:11:\"192.168.0.1\";s:3:\"end\";s:13:\"192.168.0.255\";}i:1;a:2:{s:5:\"start\";s:11:\"192.168.0.1\";s:3:\"end\";s:15:\"192.168.255.255\";}}","reg_date":"2016-03-22 00:00:00","modify_date":"2016-03-22 00:00:00","company_status":"0"}]

CompanyListModel companyListModelFromJson(String str) => CompanyListModel.fromJson(json.decode(str));
String companyListModelToJson(CompanyListModel data) => json.encode(data.toJson());
class CompanyListModel {
  CompanyListModel({
      int? flag, 
      String? msg, 
      List<Data>? data,}){
    _flag = flag;
    _msg = msg;
    _data = data;
}

  CompanyListModel.fromJson(dynamic json) {
    _flag = json['flag'];
    _msg = json['msg'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  int? _flag;
  String? _msg;
  List<Data>? _data;

  int? get flag => _flag;
  String? get msg => _msg;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['flag'] = _flag;
    map['msg'] = _msg;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// company_id : "2"
/// company_name : "helix"
/// code : "helix"
/// company_address : "surat"
/// company_email : "software@khantil.in"
/// company_mobile : ""
/// company_website : ""
/// company_logo : ""
/// ip_security : "0"
/// ip_static : "a:2:{i:0;s:15:\"119.160.198.114\";i:1;s:9:\"127.0.0.1\";}"
/// ip_range : "a:2:{i:0;a:2:{s:5:\"start\";s:11:\"192.168.0.1\";s:3:\"end\";s:13:\"192.168.0.255\";}i:1;a:2:{s:5:\"start\";s:11:\"192.168.0.1\";s:3:\"end\";s:15:\"192.168.255.255\";}}"
/// reg_date : "2016-03-22 00:00:00"
/// modify_date : "2016-03-22 00:00:00"
/// company_status : "0"

Data companydataFromJson(String str) => Data.fromJson(json.decode(str));
String companydataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? companyId, 
      String? companyName, 
      String? code, 
      String? companyAddress, 
      String? companyEmail, 
      String? companyMobile, 
      String? companyWebsite, 
      String? companyLogo, 
      String? ipSecurity, 
      String? ipStatic, 
      String? ipRange, 
      String? regDate, 
      String? modifyDate, 
      String? companyStatus,}){
    _companyId = companyId;
    _companyName = companyName;
    _code = code;
    _companyAddress = companyAddress;
    _companyEmail = companyEmail;
    _companyMobile = companyMobile;
    _companyWebsite = companyWebsite;
    _companyLogo = companyLogo;
    _ipSecurity = ipSecurity;
    _ipStatic = ipStatic;
    _ipRange = ipRange;
    _regDate = regDate;
    _modifyDate = modifyDate;
    _companyStatus = companyStatus;
}

  Data.fromJson(dynamic json) {
    _companyId = json['company_id'];
    _companyName = json['company_name'];
    _code = json['code'];
    _companyAddress = json['company_address'];
    _companyEmail = json['company_email'];
    _companyMobile = json['company_mobile'];
    _companyWebsite = json['company_website'];
    _companyLogo = json['company_logo'];
    _ipSecurity = json['ip_security'];
    _ipStatic = json['ip_static'];
    _ipRange = json['ip_range'];
    _regDate = json['reg_date'];
    _modifyDate = json['modify_date'];
    _companyStatus = json['company_status'];
  }
  String? _companyId;
  String? _companyName;
  String? _code;
  String? _companyAddress;
  String? _companyEmail;
  String? _companyMobile;
  String? _companyWebsite;
  String? _companyLogo;
  String? _ipSecurity;
  String? _ipStatic;
  String? _ipRange;
  String? _regDate;
  String? _modifyDate;
  String? _companyStatus;

  String? get companyId => _companyId;
  String? get companyName => _companyName;
  String? get code => _code;
  String? get companyAddress => _companyAddress;
  String? get companyEmail => _companyEmail;
  String? get companyMobile => _companyMobile;
  String? get companyWebsite => _companyWebsite;
  String? get companyLogo => _companyLogo;
  String? get ipSecurity => _ipSecurity;
  String? get ipStatic => _ipStatic;
  String? get ipRange => _ipRange;
  String? get regDate => _regDate;
  String? get modifyDate => _modifyDate;
  String? get companyStatus => _companyStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['company_id'] = _companyId;
    map['company_name'] = _companyName;
    map['code'] = _code;
    map['company_address'] = _companyAddress;
    map['company_email'] = _companyEmail;
    map['company_mobile'] = _companyMobile;
    map['company_website'] = _companyWebsite;
    map['company_logo'] = _companyLogo;
    map['ip_security'] = _ipSecurity;
    map['ip_static'] = _ipStatic;
    map['ip_range'] = _ipRange;
    map['reg_date'] = _regDate;
    map['modify_date'] = _modifyDate;
    map['company_status'] = _companyStatus;
    return map;
  }

}