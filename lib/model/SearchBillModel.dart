import 'dart:convert';

SearchBillModel searchBillModelFromJson(String str) =>
    SearchBillModel.fromJson(json.decode(str));

String searchBillModelToJson(SearchBillModel data) =>
    json.encode(data.toJson());

class SearchBillModel {
  SearchBillModel({
    int? flag,
    String? msg,
    List<BillData>? data,
  }) {
    _flag = flag;
    _msg = msg;
    _data = data;
  }

  SearchBillModel.fromJson(dynamic jsondata) {
    _flag = jsondata['flag'];
    _msg = jsondata['msg'];


    if(jsondata['data'] is List<dynamic>){
      if (jsondata['data'] != null) {
        _data_object = null;
        _data = [];
        jsondata['data'].forEach((v) {
          _data?.add(BillData.fromJson(v));
        });
        return;
      }
    }

    try{
      _data = [];
      _data!.clear();
      _data_object = jsondata['data'] != null ? billdataFromJson(json.encode(jsondata['data'])) : null;

    }catch(e){
      print(e.toString());
    }

  }

  int? _flag;
  String? _msg;
  List<BillData>? _data;
  BillData? _data_object;

  int? get flag => _flag;
  String? get msg => _msg;
  List<BillData>? get data => _data;
  BillData? get data_object => _data_object;

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

BillData billdataFromJson(String str) => BillData.fromJson(json.decode(str));

String dataToJson(BillData data) => json.encode(data.toJson());

class BillData {
  BillData({
    String? customerSellId,
    String? billDate,
    String? billDueDate,
    dynamic invoiceNo,
    String? termId,
    String? customerId,
    String? customerName,
    String? customerEmail,
    String? customerMobile,
    String? customerAddress,
    String? billSubTotal,
    String? discountPer,
    String? discountAmount,
    String? billGrandTotal,
    String? paymentReceive,
    String? paymentMethod,
    String? paymentMethodDetail,
    String? paymentReceiveDate,
    String? regDate,
    String? modifyDate,
    String? customerSellStatus,
    String? userId,
  }) {
    _customerSellId = customerSellId;
    _billDate = billDate;
    _billDueDate = billDueDate;
    _invoiceNo = invoiceNo;
    _termId = termId;
    _customerId = customerId;
    _customerName = customerName;
    _customerEmail = customerEmail;
    _customerMobile = customerMobile;
    _customerAddress = customerAddress;
    _billSubTotal = billSubTotal;
    _discountPer = discountPer;
    _discountAmount = discountAmount;
    _billGrandTotal = billGrandTotal;
    _paymentReceive = paymentReceive;
    _paymentMethod = paymentMethod;
    _paymentMethodDetail = paymentMethodDetail;
    _paymentReceiveDate = paymentReceiveDate;
    _regDate = regDate;
    _modifyDate = modifyDate;
    _customerSellStatus = customerSellStatus;
    _userId = userId;
  }

  BillData.fromJson(dynamic json) {
    _customerSellId = json['customer_sell_id'];
    _billDate = json['bill_date'];
    _billDueDate = json['bill_due_date'];
    _invoiceNo = json['invoice_no'];
    _termId = json['term_id'];
    _customerId = json['customer_id'];
    _customerName = json['customer_name'];
    _customerEmail = json['customer_email'];
    _customerMobile = json['customer_mobile'];
    _customerAddress = json['customer_address'];
    _billSubTotal = json['bill_sub_total'];
    _discountPer = json['discount_per'];
    _discountAmount = json['discount_amount'];
    _billGrandTotal = json['bill_grand_total'];
    _paymentReceive = json['payment_receive'];
    _paymentMethod = json['payment_method'];
    _paymentMethodDetail = json['payment_method_detail'];
    _paymentReceiveDate = json['payment_receive_date'];
    _regDate = json['reg_date'];
    _modifyDate = json['modify_date'];
    _customerSellStatus = json['customer_sell_status'];
    _userId = json['user_id'];
  }

  String? _customerSellId;
  String? _billDate;
  String? _billDueDate;
  dynamic _invoiceNo;
  String? _termId;
  String? _customerId;
  String? _customerName;
  String? _customerEmail;
  String? _customerMobile;
  String? _customerAddress;
  String? _billSubTotal;
  String? _discountPer;
  String? _discountAmount;
  String? _billGrandTotal;
  String? _paymentReceive;
  String? _paymentMethod;
  String? _paymentMethodDetail;
  String? _paymentReceiveDate;
  String? _regDate;
  String? _modifyDate;
  String? _customerSellStatus;
  String? _userId;

  String? get customerSellId => _customerSellId;

  String? get billDate => _billDate;

  String? get billDueDate => _billDueDate;

  dynamic get invoiceNo => _invoiceNo;

  String? get termId => _termId;

  String? get customerId => _customerId;

  String? get customerName => _customerName;

  String? get customerEmail => _customerEmail;

  String? get customerMobile => _customerMobile;

  String? get customerAddress => _customerAddress;

  String? get billSubTotal => _billSubTotal;

  String? get discountPer => _discountPer;

  String? get discountAmount => _discountAmount;

  String? get billGrandTotal => _billGrandTotal;

  String? get paymentReceive => _paymentReceive;

  String? get paymentMethod => _paymentMethod;

  String? get paymentMethodDetail => _paymentMethodDetail;

  String? get paymentReceiveDate => _paymentReceiveDate;

  String? get regDate => _regDate;

  String? get modifyDate => _modifyDate;

  String? get customerSellStatus => _customerSellStatus;

  String? get userId => _userId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['customer_sell_id'] = _customerSellId;
    map['bill_date'] = _billDate;
    map['bill_due_date'] = _billDueDate;
    map['invoice_no'] = _invoiceNo;
    map['term_id'] = _termId;
    map['customer_id'] = _customerId;
    map['customer_name'] = _customerName;
    map['customer_email'] = _customerEmail;
    map['customer_mobile'] = _customerMobile;
    map['customer_address'] = _customerAddress;
    map['bill_sub_total'] = _billSubTotal;
    map['discount_per'] = _discountPer;
    map['discount_amount'] = _discountAmount;
    map['bill_grand_total'] = _billGrandTotal;
    map['payment_receive'] = _paymentReceive;
    map['payment_method'] = _paymentMethod;
    map['payment_method_detail'] = _paymentMethodDetail;
    map['payment_receive_date'] = _paymentReceiveDate;
    map['reg_date'] = _regDate;
    map['modify_date'] = _modifyDate;
    map['customer_sell_status'] = _customerSellStatus;
    map['user_id'] = _userId;
    return map;
  }
}
