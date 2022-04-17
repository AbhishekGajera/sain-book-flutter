import 'dart:convert';
/// flag : 1
/// msg : "website list."
/// data : [{"website_id":"1","website_name":"amazon","website_url":"http://www.amazon.in","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","website_status":"1"},{"website_id":"2","website_name":"askmebazaar","website_url":"http://www.askmebazaar.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","website_status":"1"},{"website_id":"3","website_name":"craftsvilla","website_url":"http://www.craftsvilla.com","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","website_status":"1"},{"website_id":"4","website_name":"ebay","website_url":"http://www.ebay.in/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","website_status":"1"},{"website_id":"5","website_name":"fashionsfiesta","website_url":"http://www.fashionsfiesta.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","website_status":"1"},{"website_id":"6","website_name":"flipkart","website_url":"http://www.flipkart.com","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","website_status":"1"},{"website_id":"7","website_name":"fly2kart","website_url":"http://www.fly2kart.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","website_status":"1"},{"website_id":"8","website_name":"homeshop18","website_url":"http://www.homeshop18.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","website_status":"1"},{"website_id":"9","website_name":"istyle99","website_url":"http://www.istyle99.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","website_status":"1"},{"website_id":"10","website_name":"jomso","website_url":"http://www.jomso.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","website_status":"1"},{"website_id":"11","website_name":"limeroad","website_url":"http://www.limeroad.com","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","website_status":"1"},{"website_id":"12","website_name":"mirraw","website_url":"http://www.mirraw.com","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","website_status":"1"},{"website_id":"13","website_name":"paytm","website_url":"http://www.paytm.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","website_status":"1"},{"website_id":"14","website_name":"rediff","website_url":"http://www.rediff.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","website_status":"1"},{"website_id":"15","website_name":"royzez","website_url":"https://www.royzez.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","website_status":"1"},{"website_id":"16","website_name":"sareeo","website_url":"https://www.sareeo.clothing/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","website_status":"1"},{"website_id":"17","website_name":"shimply","website_url":"http://www.shimply.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","website_status":"1"},{"website_id":"18","website_name":"shopclues","website_url":"http://www.shopclues.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","website_status":"1"},{"website_id":"19","website_name":"snapdeal","website_url":"http://www.snapdeal.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","website_status":"1"},{"website_id":"20","website_name":"voonik","website_url":"http://www.voonik.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","website_status":"1"},{"website_id":"21","website_name":"wish","website_url":"http://www.wish.com","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","website_status":"1"},{"website_id":"22","website_name":"khantil","website_url":"http://www.khantil.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-16 17:42:48","modify_date":"2016-08-16 17:42:48","website_status":"1"},{"website_id":"23","website_name":"vandvshop","website_url":"http://www.vandvshop.com","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-16 17:43:26","modify_date":"2016-08-16 17:43:26","website_status":"1"},{"website_id":"24","website_name":"bollywoodkart","website_url":"https://www.bollywoodkart.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-24 12:35:36","modify_date":"2016-08-24 12:35:36","website_status":"1"},{"website_id":"25","website_name":"navabazar","website_url":"http://navabazar.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-24 12:38:03","modify_date":"2016-08-24 12:38:03","website_status":"1"},{"website_id":"26","website_name":"shopnshops","website_url":"http://www.shopnshops.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-08-30 14:46:05","modify_date":"2016-08-30 14:46:05","website_status":"1"},{"website_id":"27","website_name":"wishnbuy","website_url":"https://www.wishnbuy.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-09-05 14:09:07","modify_date":"2016-09-05 14:09:07","website_status":"1"},{"website_id":"28","website_name":"zipker","website_url":"http://www.zipker.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-09-07 14:02:31","modify_date":"2016-09-07 14:02:31","website_status":"1"},{"website_id":"29","website_name":"kraftly","website_url":"https://kraftly.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-09-14 13:34:53","modify_date":"2016-09-14 13:34:53","website_status":"1"},{"website_id":"30","website_name":"silkrute","website_url":"http://www.silkrute.com","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-10-10 15:33:01","modify_date":"2016-10-10 15:33:01","website_status":"1"},{"website_id":"31","website_name":"vilara","website_url":"http://www.vilara.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-10-27 11:03:04","modify_date":"2016-10-27 11:03:04","website_status":"1"},{"website_id":"32","website_name":"trendybharat","website_url":"https://trendybharat.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2016-12-16 15:32:27","modify_date":"2016-12-16 15:32:27","website_status":"1"},{"website_id":"33","website_name":"shopdrill","website_url":"http://www.shopdrill.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2017-01-30 17:00:00","modify_date":"2017-01-30 17:00:44","website_status":"1"},{"website_id":"34","website_name":"seemora","website_url":"https://seemora.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2017-02-14 10:34:36","modify_date":"2017-02-14 10:34:36","website_status":"1"},{"website_id":"35","website_name":"indzola","website_url":"https://www.indzola.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2017-03-08 12:30:36","modify_date":"2017-03-08 12:30:36","website_status":"1"},{"website_id":"37","website_name":"makemyorders","website_url":"https://www.makemyorders.com/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2017-04-20 13:59:52","modify_date":"2017-04-20 13:59:52","website_status":"1"},{"website_id":"38","website_name":"shreejifashion","website_url":"http://shreejifashion.in/","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2017-06-27 12:18:43","modify_date":"2017-06-27 12:18:43","website_status":"1"},{"website_id":"39","website_name":"test","website_url":"testttt","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2022-04-04 11:19:38","modify_date":"2022-04-04 11:19:38","website_status":"1"},{"website_id":"40","website_name":"test","website_url":"testttt","margin":"0","cod_fee":"0","courier_charges":"0","market_fee":"0","payment_charges":"0","extra_charges":"0","reg_date":"2022-04-16 17:16:16","modify_date":"2022-04-16 17:16:16","website_status":"1"}]

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

/// website_id : "1"
/// website_name : "amazon"
/// website_url : "http://www.amazon.in"
/// margin : "0"
/// cod_fee : "0"
/// courier_charges : "0"
/// market_fee : "0"
/// payment_charges : "0"
/// extra_charges : "0"
/// reg_date : "2016-08-03 00:00:00"
/// modify_date : "2016-08-03 00:00:00"
/// website_status : "1"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
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