import 'dart:convert';
ProductDataModel productDataModelFromJson(String str) => ProductDataModel.fromJson(json.decode(str));
String productDataModelToJson(ProductDataModel data) => json.encode(data.toJson());
class ProductDataModel {
  ProductDataModel({
      int? flag, 
      String? msg,
    ProductData? data,}){
    _flag = flag;
    _msg = msg;
    _data = data;
}

  ProductDataModel.fromJson(dynamic json) {
    _flag = json['flag'];
    _msg = json['msg'];
    _data = json['data'] != null ? ProductData.fromJson(json['data']) : null;
  }
  int? _flag;
  String? _msg;
  ProductData? _data;

  int? get flag => _flag;
  String? get msg => _msg;
  ProductData? get data => _data;

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


ProductData dataFromJson(String str) => ProductData.fromJson(json.decode(str));
String dataToJson(ProductData data) => json.encode(data.toJson());
class ProductData {
  Data({
      String? productId,
      String? companyId,
      String? productName,
      String? catalogName,
      String? targetPrice,
      String? purchasePrice,
      String? wholsalePrice,
      String? retailPrice,
      String? orderQuantity,
      String? productQuantity,
      String? godownLocation,
      String? productImage,
      String? description,
      String? originalImgUrl,
      String? regDate,
      String? modifyDate,
      String? userId,
      String? productStatus,
      String? productBarcode,
      String? productBarcodeId,
      String? productSku,}){
    _productId = productId;
    _companyId = companyId;
    _productName = productName;
    _catalogName = catalogName;
    _targetPrice = targetPrice;
    _purchasePrice = purchasePrice;
    _wholsalePrice = wholsalePrice;
    _retailPrice = retailPrice;
    _orderQuantity = orderQuantity;
    _productQuantity = productQuantity;
    _godownLocation = godownLocation;
    _productImage = productImage;
    _description = description;
    _originalImgUrl = originalImgUrl;
    _regDate = regDate;
    _modifyDate = modifyDate;
    _userId = userId;
    _productStatus = productStatus;
    _productBarcode = productBarcode;
    _productBarcodeId = productBarcodeId;
    _productSku = productSku;
}

  ProductData.fromJson(dynamic json) {
    _productId = json['product_id'];
    _companyId = json['company_id'];
    _productName = json['product_name'];
    _catalogName = json['catalog_name'];
    _targetPrice = json['target_price'];
    _purchasePrice = json['purchase_price'];
    _wholsalePrice = json['wholsale_price'];
    _retailPrice = json['retail_price'];
    _orderQuantity = json['order_quantity'];
    _productQuantity = json['product_quantity'];
    _godownLocation = json['godown_location'];
    _productImage = json['product_image'];
    _description = json['description'];
    _originalImgUrl = json['original_img_url'];
    _regDate = json['reg_date'];
    _modifyDate = json['modify_date'];
    _userId = json['user_id'];
    _productStatus = json['product_status'];
    _productBarcode = json['product_barcode'];
    _productBarcodeId = json['product_barcode_id'];
    _productSku = json['product_sku'];
  }
  String? _productId;
  String? _companyId;
  String? _productName;
  String? _catalogName;
  String? _targetPrice;
  String? _purchasePrice;
  String? _wholsalePrice;
  String? _retailPrice;
  String? _orderQuantity;
  String? _productQuantity;
  String? _godownLocation;
  String? _productImage;
  String? _description;
  String? _originalImgUrl;
  String? _regDate;
  String? _modifyDate;
  String? _userId;
  String? _productStatus;
  String? _productBarcode;
  String? _productBarcodeId;
  String? _productSku;

  String? get productId => _productId;
  String? get companyId => _companyId;
  String? get productName => _productName;
  String? get catalogName => _catalogName;
  String? get targetPrice => _targetPrice;
  String? get purchasePrice => _purchasePrice;
  String? get wholsalePrice => _wholsalePrice;
  String? get retailPrice => _retailPrice;
  String? get orderQuantity => _orderQuantity;
  String? get productQuantity => _productQuantity;
  String? get godownLocation => _godownLocation;
  String? get productImage => _productImage;
  String? get description => _description;
  String? get originalImgUrl => _originalImgUrl;
  String? get regDate => _regDate;
  String? get modifyDate => _modifyDate;
  String? get userId => _userId;
  String? get productStatus => _productStatus;
  String? get productBarcode => _productBarcode;
  String? get productBarcodeId => _productBarcodeId;
  String? get productSku => _productSku;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['product_id'] = _productId;
    map['company_id'] = _companyId;
    map['product_name'] = _productName;
    map['catalog_name'] = _catalogName;
    map['target_price'] = _targetPrice;
    map['purchase_price'] = _purchasePrice;
    map['wholsale_price'] = _wholsalePrice;
    map['retail_price'] = _retailPrice;
    map['order_quantity'] = _orderQuantity;
    map['product_quantity'] = _productQuantity;
    map['godown_location'] = _godownLocation;
    map['product_image'] = _productImage;
    map['description'] = _description;
    map['original_img_url'] = _originalImgUrl;
    map['reg_date'] = _regDate;
    map['modify_date'] = _modifyDate;
    map['user_id'] = _userId;
    map['product_status'] = _productStatus;
    map['product_barcode'] = _productBarcode;
    map['product_barcode_id'] = _productBarcodeId;
    map['product_sku'] = _productSku;
    return map;
  }

}