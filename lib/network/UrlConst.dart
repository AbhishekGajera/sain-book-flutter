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
}
