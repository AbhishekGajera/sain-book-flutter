import 'dart:convert';
/// flag : 1
/// msg : "Customer saved successfully!"
/// data : {"customer_name":"sas","customer_email":"asas","customer_mobile":"9978848357","customer_mobile1":"9978848357","customer_address":"sasas, asas","agency_name":"asas","agency_mobile":"8866779008","term_id":"1","customer_status":"1"}

AddCustomerModel addCustomerModelFromJson(String str) => AddCustomerModel.fromJson(json.decode(str));
String addCustomerModelToJson(AddCustomerModel data) => json.encode(data.toJson());
class AddCustomerModel {
  AddCustomerModel({
      int? flag, 
      String? msg, 
      Data? data,}){
    _flag = flag;
    _msg = msg;
    _data = data;
}

  AddCustomerModel.fromJson(dynamic json) {
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

/// customer_name : "sas"
/// customer_email : "asas"
/// customer_mobile : "9978848357"
/// customer_mobile1 : "9978848357"
/// customer_address : "sasas, asas"
/// agency_name : "asas"
/// agency_mobile : "8866779008"
/// term_id : "1"
/// customer_status : "1"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? customerName, 
      String? customerEmail, 
      String? customerMobile, 
      String? customerMobile1, 
      String? customerAddress, 
      String? agencyName, 
      String? agencyMobile, 
      String? termId, 
      String? customerStatus,}){
    _customerName = customerName;
    _customerEmail = customerEmail;
    _customerMobile = customerMobile;
    _customerMobile1 = customerMobile1;
    _customerAddress = customerAddress;
    _agencyName = agencyName;
    _agencyMobile = agencyMobile;
    _termId = termId;
    _customerStatus = customerStatus;
}

  Data.fromJson(dynamic json) {
    _customerName = json['customer_name'];
    _customerEmail = json['customer_email'];
    _customerMobile = json['customer_mobile'];
    _customerMobile1 = json['customer_mobile1'];
    _customerAddress = json['customer_address'];
    _agencyName = json['agency_name'];
    _agencyMobile = json['agency_mobile'];
    _termId = json['term_id'];
    _customerStatus = json['customer_status'];
  }
  String? _customerName;
  String? _customerEmail;
  String? _customerMobile;
  String? _customerMobile1;
  String? _customerAddress;
  String? _agencyName;
  String? _agencyMobile;
  String? _termId;
  String? _customerStatus;

  String? get customerName => _customerName;
  String? get customerEmail => _customerEmail;
  String? get customerMobile => _customerMobile;
  String? get customerMobile1 => _customerMobile1;
  String? get customerAddress => _customerAddress;
  String? get agencyName => _agencyName;
  String? get agencyMobile => _agencyMobile;
  String? get termId => _termId;
  String? get customerStatus => _customerStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['customer_name'] = _customerName;
    map['customer_email'] = _customerEmail;
    map['customer_mobile'] = _customerMobile;
    map['customer_mobile1'] = _customerMobile1;
    map['customer_address'] = _customerAddress;
    map['agency_name'] = _agencyName;
    map['agency_mobile'] = _agencyMobile;
    map['term_id'] = _termId;
    map['customer_status'] = _customerStatus;
    return map;
  }

}