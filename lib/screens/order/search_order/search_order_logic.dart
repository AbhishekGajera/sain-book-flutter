import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Search_orderLogic extends GetxController {
  // final Search_orderState state = Search_orderState();
  TextEditingController ordernumber = TextEditingController();
  TextEditingController trackingnumber = TextEditingController();
  TextEditingController loginfromdate = TextEditingController();
  TextEditingController logintodate = TextEditingController();
  TextEditingController customername = TextEditingController();
  TextEditingController customermobile = TextEditingController();
  TextEditingController customeraddress = TextEditingController();
  TextEditingController customeremail = TextEditingController();

  final companyValue = 'Company'.obs;
  List<String> companyList = [
    'Company',
    'Kadleefashion',
    'Khantil',
    'Vandvshop',
  ];
  var companytypeint = 0;

  void setcompanyType(String value) {
    companyValue.value = value.toString();
    if (value == "Kadleefashion") {
      companytypeint = 1;
    } else if (value == "Khantil") {
      companytypeint = 2;
    } else if (value == "Vandvshop") {
      companytypeint = 3;
    }
  }

  final websiteValue = 'website'.obs;
  List<String> websiteList = [
    'website',
    'Amazone',
    'craftsvilla',
    'ebay',
    'fashionsfiesta',
    'flipkart',
    'fly2kart',
    'homeshop18',
    'istyle99',
    'jomso',
    'limeroad',
    'mirraw',
    'paytm',
    'royzez',
    'rediff',
    'sareeo',
    'shimply',
    'shopclues',
    'snapdeal',
    'voonik ',
    'wish',
    'khantil',
    'vandvshop',
    'bollywoodkart',
    'navabazar',
    'shopnshops',
    'wishnbuy',
    'zipker',
    'kraftly',
    'silkrute',
    'vilara',
    'trendybharat',
    'shopdrill',
    'seemora',
    'indzola',
    'makemyorders',
    'shreejifashion',
    'test',
  ];
  var websitetypeint = 0;

  setwebsiteType(String value) {
    websiteValue.value = value.toString();
    if (value == "Amazone") {
      websitetypeint = 1;
    } else if (value == "craftsvilla") {
      websitetypeint = 2;
    } else if (value == "ebay") {
      websitetypeint = 3;
    } else if (value == "fashionsfiesta") {
      websitetypeint = 4;
    } else if (value == "flipkart") {
      websitetypeint = 5;
    } else if (value == "fly2kart") {
      websitetypeint = 6;
    } else if (value == "homeshop18") {
      websitetypeint = 7;
    } else if (value == "istyle99") {
      websitetypeint = 8;
    } else if (value == "jomso") {
      websitetypeint = 9;
    } else if (value == "limeroad") {
      websitetypeint = 10;
    } else if (value == "mirraw") {
      websitetypeint = 11;
    } else if (value == "paytm") {
      websitetypeint = 12;
    } else if (value == "royzez") {
      websitetypeint = 13;
    } else if (value == "rediff") {
      websitetypeint = 14;
    } else if (value == "sareeo") {
      websitetypeint = 15;
    } else if (value == "shimply") {
      websitetypeint = 16;
    } else if (value == "shopclues") {
      websitetypeint = 17;
    } else if (value == "snapdeal") {
      websitetypeint = 18;
    } else if (value == "voonik") {
      websitetypeint = 19;
    } else if (value == "wish") {
      websitetypeint = 20;
    } else if (value == "khantil") {
      websitetypeint = 21;
    } else if (value == "vandvshop") {
      websitetypeint = 22;
    } else if (value == "bollywoodkart") {
      websitetypeint = 23;
    } else if (value == "navabazar") {
      websitetypeint = 24;
    } else if (value == "shopnshops") {
      websitetypeint = 25;
    } else if (value == "wishnbuy") {
      websitetypeint = 26;
    } else if (value == "zipker") {
      websitetypeint = 27;
    } else if (value == "kraftly") {
      websitetypeint = 28;
    } else if (value == "silkrute") {
      websitetypeint = 29;
    } else if (value == "vilara") {
      websitetypeint = 30;
    } else if (value == "trendybharat") {
      websitetypeint = 31;
    } else if (value == "shopdrill") {
      websitetypeint = 32;
    } else if (value == "seemora") {
      websitetypeint = 33;
    } else if (value == "indzola") {
      websitetypeint = 34;
    } else if (value == "makemyorders") {
      websitetypeint = 35;
    } else if (value == "shreejifashion") {
      websitetypeint = 36;
    } else if (value == "test") {
      websitetypeint = 37;
    }
  }

  final CourierValue = 'Select Courier'.obs;
  List<String> CourierList = [
    'Select Courier',
    'jexpress',
    'llways',
    'ramex',
    'rgusondot',
    'tlantic',
    'ts',
    'luedart',
    'ookawheel',
    'ookmypacket',
    'chachainternational',
    'city',
    'connectindia',
    'daakiya',
    'delhivery',
    'delnet',
    'dhl',
    'dotzot',
    'dtdc',
    'easyship',
    'ecomexpress',
    'ekart',
    'evahan',
    'fedex',
    'firstflight',
    'gati',
    'gatiair',
    'getz',
    'godrone',
    'gojavas',
    'holisol',
    'inlogg',
    'innovex',
    'international',
    'jvexpress',
    'kakalogistics',
    'logibuddy',
    'magob',
    'mahabali',
    'maruti',
    'myntra',
    'nandan',
    'nuvoex',
    'parcelled',
    'professionalcourier',
    'redexpress',
    'roadrunnr',
    'selfpickup',
    'shadowfax',
    'shipdelight',
    'shreebalaji',
    'shreemahavir',
    'snapdeal-po',
    'speedpost',
    'sp-sur',
    'swapnex',
    'tanviexpress',
    'tirupati',
    'trackon',
    'velex',
    'velocity',
    'vulcan',
    'wowexpress',
    'xpressbees',
    'gopigeon',
    'bdkerala',
    'professional',
    'safexpress',
    'mahavir',
    'amazon',
    'bright',
    'test',
  ];
  var Couriertypeint = 0;

  setCourierType(String value) {
    CourierValue.value = value.toString();

    if (value == 'jexpress') {
      Couriertypeint = 1;
    } else if (value == 'llways') {
      Couriertypeint = 2;
    } else if (value == 'ramex') {
      Couriertypeint = 3;
    } else if (value == 'rgusondot') {
      Couriertypeint = 4;
    } else if (value == 'tlantic') {
      Couriertypeint = 5;
    } else if (value == 'ts') {
      Couriertypeint = 6;
    } else if (value == 'luedart') {
      Couriertypeint = 7;
    } else if (value == 'ookawheel') {
      Couriertypeint = 8;
    } else if (value == 'ookmypacket') {
      Couriertypeint = 9;
    } else if (value == 'chachainternational') {
      Couriertypeint = 10;
    } else if (value == 'city') {
      Couriertypeint = 11;
    } else if (value == 'connectindia') {
      Couriertypeint = 12;
    } else if (value == 'daakiya') {
      Couriertypeint = 13;
    } else if (value == 'delhivery') {
      Couriertypeint = 14;
    } else if (value == 'delnet') {
      Couriertypeint = 15;
    } else if (value == 'dhl') {
      Couriertypeint = 16;
    } else if (value == 'dotzot') {
      Couriertypeint = 18;
    } else if (value == 'dtdc') {
      Couriertypeint = 19;
    } else if (value == 'easyship') {
      Couriertypeint = 20;
    } else if (value == 'ecomexpress') {
      Couriertypeint = 21;
    } else if (value == 'ekart') {
      Couriertypeint = 22;
    } else if (value == 'evahan') {
      Couriertypeint = 23;
    } else if (value == 'fedex') {
      Couriertypeint = 24;
    } else if (value == 'firstflight') {
      Couriertypeint = 25;
    } else if (value == 'gati') {
      Couriertypeint = 26;
    } else if (value == 'gatiair') {
      Couriertypeint = 27;
    } else if (value == 'getz') {
      Couriertypeint = 28;
    } else if (value == 'godrone') {
      Couriertypeint = 29;
    } else if (value == 'gojavas') {
      Couriertypeint = 30;
    } else if (value == 'holisol') {
      Couriertypeint = 31;
    } else if (value == 'inlogg') {
      Couriertypeint = 32;
    } else if (value == 'innovex') {
      Couriertypeint = 33;
    } else if (value == 'international') {
      Couriertypeint = 34;
    } else if (value == 'jvexpress') {
      Couriertypeint = 35;
    } else if (value == 'kakalogistics') {
      Couriertypeint = 36;
    } else if (value == 'logibuddy') {
      Couriertypeint = 37;
    } else if (value == 'magob') {
      Couriertypeint = 38;
    } else if (value == 'mahabali') {
      Couriertypeint = 39;
    } else if (value == 'maruti') {
      Couriertypeint = 40;
    } else if (value == 'myntra') {
      Couriertypeint = 41;
    } else if (value == 'nandan') {
      Couriertypeint = 42;
    } else if (value == 'nuvoex') {
      Couriertypeint = 43;
    } else if (value == 'parcelled') {
      Couriertypeint = 44;
    } else if (value == 'professionalcourier') {
      Couriertypeint = 45;
    } else if (value == 'redexpress') {
      Couriertypeint = 46;
    } else if (value == 'roadrunnr') {
      Couriertypeint = 47;
    } else if (value == 'selfpickup') {
      Couriertypeint = 48;
    } else if (value == 'shadowfax') {
      Couriertypeint = 49;
    } else if (value == 'shipdelight') {
      Couriertypeint = 50;
    } else if (value == 'shreebalaji') {
      Couriertypeint = 51;
    } else if (value == 'shreemahavir') {
      Couriertypeint = 52;
    } else if (value == 'snapdeal-po') {
      Couriertypeint = 53;
    } else if (value == 'speedpost') {
      Couriertypeint = 54;
    } else if (value == 'sp-sur') {
      Couriertypeint = 55;
    } else if (value == 'swapnex') {
      Couriertypeint = 56;
    } else if (value == 'tanviexpress') {
      Couriertypeint = 57;
    } else if (value == 'tirupati') {
      Couriertypeint = 58;
    } else if (value == 'trackon') {
      Couriertypeint = 59;
    } else if (value == 'velex') {
      Couriertypeint = 60;
    } else if (value == 'velocity') {
      Couriertypeint = 61;
    } else if (value == 'vulcan') {
      Couriertypeint = 62;
    } else if (value == 'wowexpress') {
      Couriertypeint = 63;
    } else if (value == 'xpressbees') {
      Couriertypeint = 64;
    } else if (value == 'gopigeon') {
      Couriertypeint = 65;
    } else if (value == 'bdkerala') {
      Couriertypeint = 66;
    } else if (value == 'professional') {
      Couriertypeint = 67;
    } else if (value == 'safexpress') {
      Couriertypeint = 68;
    } else if (value == 'mahavir') {
      Couriertypeint = 69;
    } else if (value == 'amazon') {
      Couriertypeint = 70;
    } else if (value == 'bright') {
      Couriertypeint = 71;
    } else if (value == 'test') {
      Couriertypeint = 73;
    }
  }

  final orderstatusValue = 'order status'.obs;
  List<String> orderstatusList = [
    'order status',
    'In Process',
    'Delete',
    'Cancel',
    'Return',
    'Packed',
    'Shipping',
    'Delivered',
    'Completed',
    'Stitch',
  ];
  var orderstatustypeint = 0;

  void setorderstatusType(String value) {
    orderstatusValue.value = value.toString();
    if (value == "In Process") {
      orderstatustypeint = 1;
    } else if (value == "Delete") {
      orderstatustypeint = 2;
    } else if (value == "Cancel") {
      orderstatustypeint = 3;
    } else if (value == "Return") {
      orderstatustypeint = 4;
    } else if (value == "Packed") {
      orderstatustypeint = 5;
    } else if (value == "Shipping") {
      orderstatustypeint = 6;
    } else if (value == "Delivered") {
      orderstatustypeint = 7;
    } else if (value == "Completed") {
      orderstatustypeint = 8;
    } else if (value == "Stitch") {
      orderstatustypeint = 9;
    }
  }

  final productstatusValue = 'product status'.obs;
  List<String> productstatusList = [
    'product status',
    'In stock',
    'out of stock',
  ];
  var productstatustypeint = 0;

  void setproductstatusType(String value) {
    productstatusValue.value = value.toString();
    if (value == "In stock") {
      productstatustypeint = 1;
    } else if (value == "out of stock") {
      productstatustypeint = 2;
    }
  }

  void performLoginClickSearch(BuildContext context) {}

  void performLoginClickreset(BuildContext context) {}
}
