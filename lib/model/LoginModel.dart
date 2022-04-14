import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));
String loginToJson(Login data) => json.encode(data.toJson());
class Login {
  Login({
      int? flag,
      String? msg, 
      Data? data,}){
    _flag = flag;
    _msg = msg;
    _data = data;
}

  Login.fromJson(dynamic json) {
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
      String? userId, 
      String? userEmail, 
      String? password, 
      String? firstname, 
      String? lastname, 
      String? gender, 
      String? mobileNo, 
      String? image, 
      String? verifyCode, 
      String? regDate, 
      String? modifyDate, 
      String? lastloginDate, 
      String? userTypeId, 
      String? permission, 
      String? userStatus, 
      String? userType,}){
    _userId = userId;
    _userEmail = userEmail;
    _password = password;
    _firstname = firstname;
    _lastname = lastname;
    _gender = gender;
    _mobileNo = mobileNo;
    _image = image;
    _verifyCode = verifyCode;
    _regDate = regDate;
    _modifyDate = modifyDate;
    _lastloginDate = lastloginDate;
    _userTypeId = userTypeId;
    _permission = permission;
    _userStatus = userStatus;
    _userType = userType;
}

  Data.fromJson(dynamic json) {
    _userId = json['user_id'];
    _userEmail = json['user_email'];
    _password = json['password'];
    _firstname = json['firstname'];
    _lastname = json['lastname'];
    _gender = json['gender'];
    _mobileNo = json['mobile_no'];
    _image = json['image'];
    _verifyCode = json['verify_code'];
    _regDate = json['reg_date'];
    _modifyDate = json['modify_date'];
    _lastloginDate = json['lastlogin_date'];
    _userTypeId = json['user_type_id'];
    _permission = json['permission'];
    _userStatus = json['user_status'];
    _userType = json['user_type'];
  }
  String? _userId;
  String? _userEmail;
  String? _password;
  String? _firstname;
  String? _lastname;
  String? _gender;
  String? _mobileNo;
  String? _image;
  String? _verifyCode;
  String? _regDate;
  String? _modifyDate;
  String? _lastloginDate;
  String? _userTypeId;
  String? _permission;
  String? _userStatus;
  String? _userType;

  String? get userId => _userId;
  String? get userEmail => _userEmail;
  String? get password => _password;
  String? get firstname => _firstname;
  String? get lastname => _lastname;
  String? get gender => _gender;
  String? get mobileNo => _mobileNo;
  String? get image => _image;
  String? get verifyCode => _verifyCode;
  String? get regDate => _regDate;
  String? get modifyDate => _modifyDate;
  String? get lastloginDate => _lastloginDate;
  String? get userTypeId => _userTypeId;
  String? get permission => _permission;
  String? get userStatus => _userStatus;
  String? get userType => _userType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = _userId;
    map['user_email'] = _userEmail;
    map['password'] = _password;
    map['firstname'] = _firstname;
    map['lastname'] = _lastname;
    map['gender'] = _gender;
    map['mobile_no'] = _mobileNo;
    map['image'] = _image;
    map['verify_code'] = _verifyCode;
    map['reg_date'] = _regDate;
    map['modify_date'] = _modifyDate;
    map['lastlogin_date'] = _lastloginDate;
    map['user_type_id'] = _userTypeId;
    map['permission'] = _permission;
    map['user_status'] = _userStatus;
    map['user_type'] = _userType;
    return map;
  }

}