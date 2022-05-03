import 'dart:convert';
/// flag : 1
/// msg : "courier list."
/// data : [{"courier_id":"1","courier_name":"ajexpress","courier_website":"http://tracking.ajexpress.in/","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"2","courier_name":"allways","courier_website":"http://www.allwayslogisticsgroup.com/","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"3","courier_name":"aramex","courier_website":"https://www.aramex.com/express/track.aspx","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"4","courier_name":"argusondot","courier_website":"http://www.trackcourier.in/tracking-ondot.php","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"5","courier_name":"atlantic","courier_website":"http://www.atlanticcourier.net","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"6","courier_name":"ats","courier_website":"http://www.atsglobex.com/tracking.aspx","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"7","courier_name":"bluedart","courier_website":"http://www.bluedart.com","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"8","courier_name":"bookawheel","courier_website":"https://bookawheel.com/ordertracker","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"9","courier_name":"bookmypacket","courier_website":"http://www.bookmypacket.com/staticpages/tracking","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"10","courier_name":"chachainternational","courier_website":"http://www.atlanticcourier.net","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"11","courier_name":"city","courier_website":"http://www.city.com","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"12","courier_name":"connectindia","courier_website":"http://www.connectindia.com/tracking/","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"13","courier_name":"daakiya","courier_website":"https://www.daakiya.com/","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"14","courier_name":"delhivery","courier_website":"http://www.delhivery.com","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"15","courier_name":"delnet","courier_website":"http://www.delnetexpress.com/","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"16","courier_name":"dhl","courier_website":"http://www.dhl.co.in/en/express/tracking.html","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"18","courier_name":"dotzot","courier_website":"http://dotzot.com","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"19","courier_name":"dtdc","courier_website":"http://dtdc.com/index.asp","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"20","courier_name":"easyship","courier_website":"http://www.easyship.com","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"21","courier_name":"ecomexpress","courier_website":"http://www.ecomexpress.in","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"22","courier_name":"ekart","courier_website":"https://www.flipkart.com/trackorder","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"23","courier_name":"evahan","courier_website":"http://evahan.in/","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"24","courier_name":"fedex","courier_website":"http://www.fedex.com","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"25","courier_name":"firstflight","courier_website":"http://firstflight.com","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"26","courier_name":"gati","courier_website":"http://www.gati.com/","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"27","courier_name":"gatiair","courier_website":"http://www.gatikwe.com/track-your-shipment","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"28","courier_name":"getz","courier_website":"http://getzcourier.com/","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"29","courier_name":"godrone","courier_website":"http://gojavas.com","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"30","courier_name":"gojavas","courier_website":"http://gojavas.com/","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"31","courier_name":"holisol","courier_website":"http://holisollogistics.com","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"32","courier_name":"inlogg","courier_website":"http://www.trackcourier.in","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"33","courier_name":"innovex","courier_website":"http://innovex.co.in","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"34","courier_name":"international","courier_website":"http://www.international.com","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"35","courier_name":"jvexpress","courier_website":"http://www.jvxpress.com/","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"36","courier_name":"kakalogistics","courier_website":"http://kakals.net/","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"37","courier_name":"logibuddy","courier_website":"http://www.logibuddy.com","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"38","courier_name":"magob","courier_website":"http://magob.com","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"39","courier_name":"mahabali","courier_website":"http://www.shreemahabaliexpress.com/frm_doctrack.aspx?no=","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"40","courier_name":"maruti","courier_website":"http://shreemaruticourier.in/tracking.aspx","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"41","courier_name":"myntra","courier_website":"http://www.myntra.com/","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"42","courier_name":"nandan","courier_website":"http://www.shreenandancourier.com","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"43","courier_name":"nuvoex","courier_website":"http://www.nuvoex.com/","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"44","courier_name":"parcelled","courier_website":"http://parcelled.com","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"45","courier_name":"professionalcourier","courier_website":"https://www.tpcindia.com/","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"46","courier_name":"redexpress","courier_website":"https://www.getsetred.net/tracking","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"47","courier_name":"roadrunnr","courier_website":"http://roadrunnr.com","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"48","courier_name":"selfpickup","courier_website":"http://www.vandvshop.com","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"49","courier_name":"shadowfax","courier_website":"http://shadowfax.in/","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"50","courier_name":"shipdelight","courier_website":"http://crm.shipdelight.com/index.php/customer/tracking","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"51","courier_name":"shreebalaji","courier_website":"http://www.shreebalajicourier.com","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"52","courier_name":"shreemahavir","courier_website":"http://www.shreemahavircourier.in","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"53","courier_name":"snapdeal-po","courier_website":"http://khantil.com/","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"54","courier_name":"speedpost","courier_website":"http://www.indiapost.gov.in/speednettracking.aspx","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"55","courier_name":"sp-sur","courier_website":"http://sp-sur.com","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"56","courier_name":"swapnex","courier_website":"http://www.swepnex.com","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"57","courier_name":"tanviexpress","courier_website":"http://www.tanviexpress.com/tracking.aspx","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"58","courier_name":"tirupati","courier_website":"http://www.shreetirupaticourier.net","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"59","courier_name":"trackon","courier_website":"http://trackoncourier.com/track1.aspx","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"60","courier_name":"velex","courier_website":"http://www.velex.in","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"61","courier_name":"velocity","courier_website":"http://www.velex.in","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"62","courier_name":"vulcan","courier_website":"http://vulcan.com","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"63","courier_name":"wowexpress","courier_website":"http://wowexpress.in/","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"64","courier_name":"xpressbees","courier_website":"http://www.xpressbees.com","cod":"1","rate":"0.00","reg_date":"2016-08-03 00:00:00","modify_date":"2016-08-03 00:00:00","courier_status":"1"},{"courier_id":"65","courier_name":"gopigeon","courier_website":"http://gopigeon.in/track","cod":"1","rate":"0.00","reg_date":"2016-08-20 12:13:04","modify_date":"2016-08-20 12:13:04","courier_status":"1"},{"courier_id":"66","courier_name":"bdkerala","courier_website":"http://bluedart.com/","cod":"1","rate":"0.00","reg_date":"2016-08-26 11:52:36","modify_date":"2016-08-26 11:52:36","courier_status":"1"},{"courier_id":"67","courier_name":"professional","courier_website":"http://www.professionalcourier.co.in","cod":"1","rate":"0.00","reg_date":"2016-09-30 11:13:52","modify_date":"2016-09-30 11:13:52","courier_status":"1"},{"courier_id":"68","courier_name":"safexpress","courier_website":"http://www.safexpress.com/","cod":"1","rate":"0.00","reg_date":"2016-11-04 12:41:44","modify_date":"2016-11-04 12:41:44","courier_status":"1"},{"courier_id":"69","courier_name":"mahavir","courier_website":"http://shreemahavircourier.in/","cod":"1","rate":"0.00","reg_date":"2016-12-07 11:31:10","modify_date":"2016-12-07 11:31:10","courier_status":"1"},{"courier_id":"70","courier_name":"amazon","courier_website":"http://www.amazon.in/gp/aw/help/id=200903350","cod":"1","rate":"0.00","reg_date":"2017-03-23 14:32:54","modify_date":"2017-03-23 14:32:54","courier_status":"1"},{"courier_id":"71","courier_name":"bright","courier_website":"http://www.brightparcel.com/","cod":"1","rate":"0.00","reg_date":"2017-04-04 17:38:52","modify_date":"2017-04-04 17:38:52","courier_status":"1"},{"courier_id":"72","courier_name":"test","courier_website":"test","cod":"0","rate":"0.00","reg_date":"2022-04-04 10:51:34","modify_date":"2022-04-04 10:51:34","courier_status":"0"},{"courier_id":"73","courier_name":"test","courier_website":"test","cod":"1","rate":"0.00","reg_date":"2022-04-10 18:03:44","modify_date":"2022-04-10 18:03:44","courier_status":"1"}]

CourierListModel courierListModelFromJson(String str) => CourierListModel.fromJson(json.decode(str));
String courierListModelToJson(CourierListModel data) => json.encode(data.toJson());
class CourierListModel {
  CourierListModel({
      int? flag, 
      String? msg, 
      List<Data>? data,}){
    _flag = flag;
    _msg = msg;
    _data = data;
}

  CourierListModel.fromJson(dynamic json) {
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

/// courier_id : "1"
/// courier_name : "ajexpress"
/// courier_website : "http://tracking.ajexpress.in/"
/// cod : "1"
/// rate : "0.00"
/// reg_date : "2016-08-03 00:00:00"
/// modify_date : "2016-08-03 00:00:00"
/// courier_status : "1"

Data courierdataFromJson(String str) => Data.fromJson(json.decode(str));
String courierdataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? courierId, 
      String? courierName, 
      String? courierWebsite, 
      String? cod, 
      String? rate, 
      String? regDate, 
      String? modifyDate, 
      String? courierStatus,}){
    _courierId = courierId;
    _courierName = courierName;
    _courierWebsite = courierWebsite;
    _cod = cod;
    _rate = rate;
    _regDate = regDate;
    _modifyDate = modifyDate;
    _courierStatus = courierStatus;
}

  Data.fromJson(dynamic json) {
    _courierId = json['courier_id'];
    _courierName = json['courier_name'];
    _courierWebsite = json['courier_website'];
    _cod = json['cod'];
    _rate = json['rate'];
    _regDate = json['reg_date'];
    _modifyDate = json['modify_date'];
    _courierStatus = json['courier_status'];
  }
  String? _courierId;
  String? _courierName;
  String? _courierWebsite;
  String? _cod;
  String? _rate;
  String? _regDate;
  String? _modifyDate;
  String? _courierStatus;

  String? get courierId => _courierId;
  String? get courierName => _courierName;
  String? get courierWebsite => _courierWebsite;
  String? get cod => _cod;
  String? get rate => _rate;
  String? get regDate => _regDate;
  String? get modifyDate => _modifyDate;
  String? get courierStatus => _courierStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['courier_id'] = _courierId;
    map['courier_name'] = _courierName;
    map['courier_website'] = _courierWebsite;
    map['cod'] = _cod;
    map['rate'] = _rate;
    map['reg_date'] = _regDate;
    map['modify_date'] = _modifyDate;
    map['courier_status'] = _courierStatus;
    return map;
  }

}