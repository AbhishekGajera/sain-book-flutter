import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/network/UrlConst.dart';
import 'package:sain_book_project/screens/home/home_logic.dart';
import 'package:sain_book_project/themes/mythemes.dart';
import 'package:sain_book_project/themes/routes.dart';

import '../other/images.dart';

class CustomDrawer extends StatelessWidget {
  final controller = Get.find<HomeLogic>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                alignment: Alignment.center,
                color: Colors.black,
                child: Column(
                  children: [
                    Obx(
                      () {
                        return Image(
                          image: NetworkImage(
                            getImageBaseUrl(
                              endpoint: controller.loginData.value.data!.image
                                  .toString(),
                            ),
                          ),
                        );
                      },
                    ),
                    //
                    Obx(() {
                      return Center(
                        child: Text(
                          "${controller.loginData.value.data!.firstname} ${controller.loginData.value.data!.lastname}",
                          style: Themes.drawerTextWhiteStyle,
                        ).marginAll(20),
                      );
                    })
                  ],
                )),
            ExpansionTile(
              title: Text(
                "Sell",
                style: Themes.drawerTexeStyle,
              ),
              children: [
                ListTile(
                  leading: Icon(Icons.reorder),
                  onTap: () {},
                  title: Text("Order", style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  leading: Icon(Icons.keyboard_return),
                  onTap: () {},
                  title: Text("Return Order", style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  onTap: () {},
                  title: Text("Customer", style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  leading: Icon(Icons.document_scanner),
                  onTap: () {},
                  title: Text("Manifest", style: Themes.drawerTexeStyle),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                "Stoke",
                style: Themes.drawerTexeStyle,
              ),
              children: [
                ListTile(
                  leading: Icon(Icons.shopping_bag_outlined),
                  onTap: () {},
                  title: Text("Product", style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  leading: Icon(Icons.qr_code_outlined),
                  onTap: () {},
                  title: Text("Barcode", style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("Count Stoke", style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("Return Stoke", style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  onTap: () {},
                  title:
                      Text("ReConsider Stoke", style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("Change Barcode Location",
                      style: Themes.drawerTexeStyle),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                "Purchase",
                style: Themes.drawerTexeStyle,
              ),
              children: [
                ListTile(
                  onTap: () {},
                  title: Text("Purchase", style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("Supplier", style: Themes.drawerTexeStyle),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                "Report",
                style: Themes.drawerTexeStyle,
              ),
              children: [
                ListTile(
                  onTap: () {},
                  title: Text("Payment", style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("GoDown InStoke", style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("Company Revenue", style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("Website Sell Summery",
                      style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("Product Sell Summery",
                      style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("Return Summery", style: Themes.drawerTexeStyle),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                "Setting",
                style: Themes.drawerTexeStyle,
              ),
              children: [
                ListTile(
                  onTap: () {
                    controller.selectedPage.value = 1;
                  },
                  title: Text("Company", style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  onTap: () {
                    controller.selectedPage.value = 2;
                  },
                  title: Text("Courier", style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("Website", style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("Customer", style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  onTap: () {
                    controller.selectedPage.value = 0;
                  },
                  title: Text("User", style: Themes.drawerTexeStyle),
                ),
              ],
            ),
            CupertinoButton(
              alignment: Alignment.centerLeft,
              onPressed: () {},
              child: Text(
                "Log Out",
                style: Themes.cupertinobtnTxtStyle,
              ),
            ),
            //Expanded(child: Container(),),
            //Text("Change Password"),
          ],
        ),
      ),
    );
  }
}
