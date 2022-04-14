import 'dart:convert';
/// flag : 1
/// msg : "successfully courier add."
/// data : {"courier_name":"test","courier_website":"test","cod":"1","rate":"test","courier_status":"1","modify_date":"2022-04-10 18:03:44","reg_date":"2022-04-10 18:03:44"}

AddCourierModel addCourierModelFromJson(String str) => AddCourierModel.fromJson(json.decode(str));
String addCourierModelToJson(AddCourierModel data) => json.encode(data.toJson());
class AddCourierModel {
  AddCourierModel({
      int? flag, 
      String? msg, 
      Data? data,}){
    _flag = flag;
    _msg = msg;
    _data = data;
}

  AddCourierModel.fromJson(dynamic json) {
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

/// courier_name : "test"
/// courier_website : "test"
/// cod : "1"
/// rate : "test"
/// courier_status : "1"
/// modify_date : "2022-04-10 18:03:44"
/// reg_date : "2022-04-10 18:03:44"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? courierName, 
      String? courierWebsite, 
      String? cod, 
      String? rate, 
      String? courierStatus, 
      String? modifyDate, 
      String? regDate,}){
    _courierName = courierName;
    _courierWebsite = courierWebsite;
    _cod = cod;
    _rate = rate;
    _courierStatus = courierStatus;
    _modifyDate = modifyDate;
    _regDate = regDate;
}

  Data.fromJson(dynamic json) {
    _courierName = json['courier_name'];
    _courierWebsite = json['courier_website'];
    _cod = json['cod'];
    _rate = json['rate'];
    _courierStatus = json['courier_status'];
    _modifyDate = json['modify_date'];
    _regDate = json['reg_date'];
  }
  String? _courierName;
  String? _courierWebsite;
  String? _cod;
  String? _rate;
  String? _courierStatus;
  String? _modifyDate;
  String? _regDate;

  String? get courierName => _courierName;
  String? get courierWebsite => _courierWebsite;
  String? get cod => _cod;
  String? get rate => _rate;
  String? get courierStatus => _courierStatus;
  String? get modifyDate => _modifyDate;
  String? get regDate => _regDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['courier_name'] = _courierName;
    map['courier_website'] = _courierWebsite;
    map['cod'] = _cod;
    map['rate'] = _rate;
    map['courier_status'] = _courierStatus;
    map['modify_date'] = _modifyDate;
    map['reg_date'] = _regDate;
    return map;
  }

}