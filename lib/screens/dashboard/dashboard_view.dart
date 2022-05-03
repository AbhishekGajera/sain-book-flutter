import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/mythemes.dart';
import '../DrawerScreen.dart';
import 'dashboard_logic.dart';

class DashboardPage extends StatelessWidget {
  final controller = Get.put(DashboardLogic());
  final state = Get.find<DashboardLogic>().state;

  late BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
      ),
      drawer: CustomDrawer(),
      body: ListView(
        children: [
          addnewbill(),
          customerSell(),
          productSearch(),
          barcodeSearch(),
          adduser(),
          customer(),
          company(),
          courier(),
          website()
        ],
      ),
    );
  }

  addnewbill() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Themes.pink,
        ),
        onPressed: () {
          controller.performOrderSearch(context);
        },
        child: const Text(
          "Add New Bill",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }

  customerSell() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Themes.white,
        ),
        onPressed: () {
          controller.customerSell(context);
        },
        child: const Text(
          "Customer Sell",
          style: TextStyle(fontSize: 16, color: Colors.black87),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }

  productSearch() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Themes.darkblue,
        ),
        onPressed: () {
          controller.productSearch(context);
        },
        child: const Text(
          "Product Search",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }

  barcodeSearch() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Themes.yello,
        ),
        onPressed: () {
          controller.barcodeSearch(context);
        },
        child: const Text(
          "Barcode Search",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }

  adduser() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Themes.red,
        ),
        onPressed: () {
          controller.addUser(context);
        },
        child: const Text(
          " User",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }


  customer() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Themes.lightblue,
        ),
        onPressed: () {
          controller.addcustomer(context);
        },
        child: const Text(
          "Customer",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }

  company() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Themes.pink,
        ),
        onPressed: () {
          controller.addCompany(context);
        },
        child: const Text(
          "Company",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }

  courier() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Themes.white,
        ),
        onPressed: () {
          controller.addcourier(context);
        },
        child: const Text(
          "Courier",
          style: TextStyle(fontSize: 16,color: Colors.black87),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }


  website() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Themes.darkblue,
        ),
        onPressed: () {
          controller.addwebsite(context);
        },
        child: const Text(
          "Website",
          style: TextStyle(fontSize: 16,color: Colors.white),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }

  devider() {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color.fromRGBO(196, 196, 196, 0.6), width: 5.0),
        ),
      ),
    );
  }
}
