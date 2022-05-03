import 'dart:convert';
/// flag : 1
/// msg : "billno."
/// data : 21668

BillNumberModel billNumberModelFromJson(String str) => BillNumberModel.fromJson(json.decode(str));
String billNumberModelToJson(BillNumberModel data) => json.encode(data.toJson());
class BillNumberModel {
  BillNumberModel({
      int? flag, 
      String? msg, 
      int? data,}){
    _flag = flag;
    _msg = msg;
    _data = data;
}

  BillNumberModel.fromJson(dynamic json) {
    _flag = json['flag'];
    _msg = json['msg'];
    _data = json['data'];
  }
  int? _flag;
  String? _msg;
  int? _data;

  int? get flag => _flag;
  String? get msg => _msg;
  int? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['flag'] = _flag;
    map['msg'] = _msg;
    map['data'] = _data;
    return map;
  }

}