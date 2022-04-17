import 'dart:convert';

SaveWebsiteModel saveWebsiteModelFromJson(String str) => SaveWebsiteModel.fromJson(json.decode(str));
String saveWebsiteModelToJson(SaveWebsiteModel data) => json.encode(data.toJson());
class SaveWebsiteModel {
  SaveWebsiteModel({
      int? flag, 
      String? msg, 
      Data? data,}){
    _flag = flag;
    _msg = msg;
    _data = data;
}

  SaveWebsiteModel.fromJson(dynamic json) {
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


Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? websiteName, 
      String? websiteUrl, 
      String? websiteStatus, 
      String? modifyDate, 
      String? regDate,}){
    _websiteName = websiteName;
    _websiteUrl = websiteUrl;
    _websiteStatus = websiteStatus;
    _modifyDate = modifyDate;
    _regDate = regDate;
}

  Data.fromJson(dynamic json) {
    _websiteName = json['website_name'];
    _websiteUrl = json['website_url'];
    _websiteStatus = json['website_status'];
    _modifyDate = json['modify_date'];
    _regDate = json['reg_date'];
  }
  String? _websiteName;
  String? _websiteUrl;
  String? _websiteStatus;
  String? _modifyDate;
  String? _regDate;

  String? get websiteName => _websiteName;
  String? get websiteUrl => _websiteUrl;
  String? get websiteStatus => _websiteStatus;
  String? get modifyDate => _modifyDate;
  String? get regDate => _regDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['website_name'] = _websiteName;
    map['website_url'] = _websiteUrl;
    map['website_status'] = _websiteStatus;
    map['modify_date'] = _modifyDate;
    map['reg_date'] = _regDate;
    return map;
  }

}