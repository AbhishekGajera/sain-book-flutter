import 'dart:convert';

WebsiteListModel websiteListModelFromJson(String str) => WebsiteListModel.fromJson(json.decode(str));
String websiteListModelToJson(WebsiteListModel data) => json.encode(data.toJson());
class WebsiteListModel {
  WebsiteListModel({
      int? flag, 
      String? msg, 
      List<Data>? data,}){
    _flag = flag;
    _msg = msg;
    _data = data;
}

  WebsiteListModel.fromJson(dynamic json) {
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

Data websitedataFromJson(String str) => Data.fromJson(json.decode(str));
String websitedataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? websiteId, 
      String? websiteName, 
      String? websiteUrl, 
      String? margin, 
      String? codFee, 
      String? courierCharges, 
      String? marketFee, 
      String? paymentCharges, 
      String? extraCharges, 
      String? regDate, 
      String? modifyDate, 
      String? websiteStatus,}){
    _websiteId = websiteId;
    _websiteName = websiteName;
    _websiteUrl = websiteUrl;
    _margin = margin;
    _codFee = codFee;
    _courierCharges = courierCharges;
    _marketFee = marketFee;
    _paymentCharges = paymentCharges;
    _extraCharges = extraCharges;
    _regDate = regDate;
    _modifyDate = modifyDate;
    _websiteStatus = websiteStatus;
}

  Data.fromJson(dynamic json) {
    _websiteId = json['website_id'];
    _websiteName = json['website_name'];
    _websiteUrl = json['website_url'];
    _margin = json['margin'];
    _codFee = json['cod_fee'];
    _courierCharges = json['courier_charges'];
    _marketFee = json['market_fee'];
    _paymentCharges = json['payment_charges'];
    _extraCharges = json['extra_charges'];
    _regDate = json['reg_date'];
    _modifyDate = json['modify_date'];
    _websiteStatus = json['website_status'];
  }
  String? _websiteId;
  String? _websiteName;
  String? _websiteUrl;
  String? _margin;
  String? _codFee;
  String? _courierCharges;
  String? _marketFee;
  String? _paymentCharges;
  String? _extraCharges;
  String? _regDate;
  String? _modifyDate;
  String? _websiteStatus;

  String? get websiteId => _websiteId;
  String? get websiteName => _websiteName;
  String? get websiteUrl => _websiteUrl;
  String? get margin => _margin;
  String? get codFee => _codFee;
  String? get courierCharges => _courierCharges;
  String? get marketFee => _marketFee;
  String? get paymentCharges => _paymentCharges;
  String? get extraCharges => _extraCharges;
  String? get regDate => _regDate;
  String? get modifyDate => _modifyDate;
  String? get websiteStatus => _websiteStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['website_id'] = _websiteId;
    map['website_name'] = _websiteName;
    map['website_url'] = _websiteUrl;
    map['margin'] = _margin;
    map['cod_fee'] = _codFee;
    map['courier_charges'] = _courierCharges;
    map['market_fee'] = _marketFee;
    map['payment_charges'] = _paymentCharges;
    map['extra_charges'] = _extraCharges;
    map['reg_date'] = _regDate;
    map['modify_date'] = _modifyDate;
    map['website_status'] = _websiteStatus;
    return map;
  }

}