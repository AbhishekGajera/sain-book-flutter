import 'dart:convert';

CustomerListModel customerListModelFromJson(String str) => CustomerListModel.fromJson(json.decode(str));
String customerListModelToJson(CustomerListModel data) => json.encode(data.toJson());
class CustomerListModel {
  CustomerListModel({
      int? flag, 
      String? msg, 
      List<CustomerData>? data,}){
    _flag = flag;
    _msg = msg;
    _data = data;
}

  CustomerListModel.fromJson(dynamic json) {
    _flag = json['flag'];
    _msg = json['msg'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(CustomerData.fromJson(v));
      });
    }
  }
  int? _flag;
  String? _msg;
  List<CustomerData>? _data;

  int? get flag => _flag;
  String? get msg => _msg;
  List<CustomerData>? get data => _data;

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


CustomerData customerdataFromJson(String str) => CustomerData.fromJson(json.decode(str));
String custoemrdataToJson(CustomerData data) => json.encode(data.toJson());
class CustomerData {
  CustomerData({
      String? customerId, 
      String? customerName, 
      String? customerEmail, 
      String? customerMobile, 
      String? customerMobile1, 
      String? agencyName, 
      String? agencyMobile, 
      String? customerAddress, 
      String? termId, 
      String? customerStatus,}){
    _customerId = customerId;
    _customerName = customerName;
    _customerEmail = customerEmail;
    _customerMobile = customerMobile;
    _customerMobile1 = customerMobile1;
    _agencyName = agencyName;
    _agencyMobile = agencyMobile;
    _customerAddress = customerAddress;
    _termId = termId;
    _customerStatus = customerStatus;
}

  CustomerData.fromJson(dynamic json) {
    _customerId = json['customer_id'];
    _customerName = json['customer_name'];
    _customerEmail = json['customer_email'];
    _customerMobile = json['customer_mobile'];
    _customerMobile1 = json['customer_mobile1'];
    _agencyName = json['agency_name'];
    _agencyMobile = json['agency_mobile'];
    _customerAddress = json['customer_address'];
    _termId = json['term_id'];
    _customerStatus = json['customer_status'];
  }
  String? _customerId;
  String? _customerName;
  String? _customerEmail;
  String? _customerMobile;
  String? _customerMobile1;
  String? _agencyName;
  String? _agencyMobile;
  String? _customerAddress;
  String? _termId;
  String? _customerStatus;

  String? get customerId => _customerId;
  String? get customerName => _customerName;
  String? get customerEmail => _customerEmail;
  String? get customerMobile => _customerMobile;
  String? get customerMobile1 => _customerMobile1;
  String? get agencyName => _agencyName;
  String? get agencyMobile => _agencyMobile;
  String? get customerAddress => _customerAddress;
  String? get termId => _termId;
  String? get customerStatus => _customerStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['customer_id'] = _customerId;
    map['customer_name'] = _customerName;
    map['customer_email'] = _customerEmail;
    map['customer_mobile'] = _customerMobile;
    map['customer_mobile1'] = _customerMobile1;
    map['agency_name'] = _agencyName;
    map['agency_mobile'] = _agencyMobile;
    map['customer_address'] = _customerAddress;
    map['term_id'] = _termId;
    map['customer_status'] = _customerStatus;
    return map;
  }

}