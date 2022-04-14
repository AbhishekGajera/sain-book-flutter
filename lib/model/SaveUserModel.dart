import 'dart:convert';

SaveUserModel saveUserModelFromJson(String str) => SaveUserModel.fromJson(json.decode(str));
String saveUserModelToJson(SaveUserModel data) => json.encode(data.toJson());
class SaveUserModel {
  SaveUserModel({
      int? flag, 
      String? msg, 
      Data? data,}){
    _flag = flag;
    _msg = msg;
    _data = data;
}

  SaveUserModel.fromJson(dynamic json) {
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
      String? userEmail, 
      String? firstname, 
      String? lastname, 
      String? gender, 
      String? mobileNo, 
      String? modifyDate, 
      String? lastloginDate, 
      String? userTypeId, 
      String? userStatus, 
      String? password,}){
    _userEmail = userEmail;
    _firstname = firstname;
    _lastname = lastname;
    _gender = gender;
    _mobileNo = mobileNo;
    _modifyDate = modifyDate;
    _lastloginDate = lastloginDate;
    _userTypeId = userTypeId;
    _userStatus = userStatus;
    _password = password;
}

  Data.fromJson(dynamic json) {
    _userEmail = json['user_email'];
    _firstname = json['firstname'];
    _lastname = json['lastname'];
    _gender = json['gender'];
    _mobileNo = json['mobile_no'];
    _modifyDate = json['modify_date'];
    _lastloginDate = json['lastlogin_date'];
    _userTypeId = json['user_type_id'];
    _userStatus = json['user_status'];
    _password = json['password'];
  }
  String? _userEmail;
  String? _firstname;
  String? _lastname;
  String? _gender;
  String? _mobileNo;
  String? _modifyDate;
  String? _lastloginDate;
  String? _userTypeId;
  String? _userStatus;
  String? _password;

  String? get userEmail => _userEmail;
  String? get firstname => _firstname;
  String? get lastname => _lastname;
  String? get gender => _gender;
  String? get mobileNo => _mobileNo;
  String? get modifyDate => _modifyDate;
  String? get lastloginDate => _lastloginDate;
  String? get userTypeId => _userTypeId;
  String? get userStatus => _userStatus;
  String? get password => _password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_email'] = _userEmail;
    map['firstname'] = _firstname;
    map['lastname'] = _lastname;
    map['gender'] = _gender;
    map['mobile_no'] = _mobileNo;
    map['modify_date'] = _modifyDate;
    map['lastlogin_date'] = _lastloginDate;
    map['user_type_id'] = _userTypeId;
    map['user_status'] = _userStatus;
    map['password'] = _password;
    return map;
  }

}