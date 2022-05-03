const String base = "https://shopno.ml/stockmanager/api/v1/";
const String imageurl = "https://shopno.ml/stockmanager/image/";

String getUrl({required String endpoint}) {
  print(base+endpoint);
  return base + endpoint;
}

String getImageBaseUrl({required String endpoint}){
  print(imageurl+endpoint);
  return imageurl+endpoint;
}


class endPoint {
  static String login = "login";
  static String saveuser = "saveuser";
  static String savecourier = "savecourier";
  static String savecompany = "savecompany";
  static String savecustomer = "savecustomer";
  static String savewebsite = "savewebsite";
  static String userlist = "userlist";
  static String customerlist = "customerlist";
  static String websitelist = "websitelist";
  static String courierlist = "courierlist";
  static String companylist = "companylist";
  static String bill_number = "new_billno";
  static String addnew_bill = "addnew_bill";
  static String get_barcode = "get_barcode";
  static String get_bill = "get_bill";
  static String productlist = "productlist";
}
