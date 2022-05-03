import 'dart:convert';
/// flag : 1
/// msg : "user list."
/// data : [{"user_id":"3","user_email":"helix.dhara@gmail.com","password":"e10adc3949ba59abbe56e057f20f883e","firstname":"dhara","lastname":"chauhan","gender":"0","mobile_no":"919898133321","image":"user/helixdhara@gmailcom.png","verify_code":"","reg_date":"2016-02-25 00:00:00","modify_date":"2022-01-28 13:10:13","lastlogin_date":"2022-04-16 16:10:58","user_type_id":"2","permission":"","user_status":"1"}]

UserListModel userListModelFromJson(String str) => UserListModel.fromJson(json.decode(str));
String userListModelToJson(UserListModel data) => json.encode(data.toJson());
class UserListModel {
  UserListModel({
      int? flag, 
      String? msg, 
      List<Data>? data,}){
    _flag = flag;
    _msg = msg;
    _data = data;
}

  UserListModel.fromJson(dynamic json) {
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

/// user_id : "3"
/// user_email : "helix.dhara@gmail.com"
/// password : "e10adc3949ba59abbe56e057f20f883e"
/// firstname : "dhara"
/// lastname : "chauhan"
/// gender : "0"
/// mobile_no : "919898133321"
/// image : "user/helixdhara@gmailcom.png"
/// verify_code : ""
/// reg_date : "2016-02-25 00:00:00"
/// modify_date : "2022-01-28 13:10:13"
/// lastlogin_date : "2022-04-16 16:10:58"
/// user_type_id : "2"
/// permission : ""
/// user_status : "1"

Data userdataFromJson(String str) => Data.fromJson(json.decode(str));
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
      String? userStatus,}){
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
    return map;
  }

}