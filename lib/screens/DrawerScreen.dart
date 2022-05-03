import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/network/UrlConst.dart';
import 'package:sain_book_project/screens/home/home_logic.dart';
import 'package:sain_book_project/themes/mythemes.dart';
import 'package:sain_book_project/themes/routes.dart';

import '../other/images.dart';
import '../themes/SassionManager.dart';

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
                  profilePicture(),
                  username()
                ],
              ),
            ),
            ListTile(
              onTap: () {
                controller.selectedPage.value = 0;
              },
              title: Text("Dashboard", style: Themes.drawerTexeStyle),
            ),
            ExpansionTile(
              title: Text(
                "Sell",
                style: Themes.drawerTexeStyle,
              ),
              children: [
                ListTile(
                  leading: Icon(Icons.reorder),
                  onTap: () {
                    controller.selectedPage.value = 14;
                  },
                  title: Text("Add New Bill", style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  leading: Icon(Icons.keyboard_return),
                  onTap: () {
                    controller.selectedPage.value = 15;
                  },
                  title: Text("Customer Sell", style: Themes.drawerTexeStyle),
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
                  onTap: () {
                    controller.selectedPage.value = 12;
                  },
                  title: Text("Product", style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  leading: Icon(Icons.qr_code_outlined),
                  onTap: () {
                    controller.selectedPage.value = 13;
                  },
                  title: Text("Barcode", style: Themes.drawerTexeStyle),
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
                  leading: Icon(Icons.home_work_rounded),
                  onTap: () {
                    controller.selectedPage.value = 2;
                  },
                  title: Text("Company", style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  leading: Icon(Icons.card_travel_sharp),
                  onTap: () {
                    controller.selectedPage.value = 3;
                  },
                  title: Text("Courier", style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  leading: Icon(Icons.home_work_rounded),
                  onTap: () {
                    controller.selectedPage.value = 5;
                  },
                  title: Text("Website", style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  leading: Icon(Icons.supervised_user_circle_outlined),
                  onTap: () {
                    controller.selectedPage.value = 4;
                  },
                  title: Text("Customer", style: Themes.drawerTexeStyle),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  onTap: () {
                    controller.selectedPage.value = 1;
                  },
                  title: Text("User", style: Themes.drawerTexeStyle),
                ),
              ],
            ),
            CupertinoButton(
              alignment: Alignment.centerLeft,
              onPressed: () {
                SassionManager.saveBoolean(key: SassionConst.islogin, value: false).then((value) {
                  SassionManager.saveString(key: SassionConst.loginUserData, value: "").then((value) {
                    SassionManager.saveString(key: SassionConst.userid, value: "").then((value){
                      Get.toNamed(login);
                    });
                  });
                });
              },
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

  profilePicture() {
    return Obx(() {
      return CircleAvatar(
        backgroundColor: Colors.white,
        radius: 60,
        child: ClipOval(
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            width: 120,
            height: 120,
            imageUrl: getImageBaseUrl(
                endpoint: controller.loginData.value.data!.image.toString()),
            placeholder: (context, url) => Image(
              image: AssetImage(sainbooktransparent),
              height: 60,
              width: 60,
            ),
            errorWidget: (context, url, error) {
              return Image(
                image: AssetImage(sainbooktransparent),
                height: 60,
                width: 60,
              );
            },
          ),
        ),
      ).marginOnly(
        top: 50,
      );
    });
  }

  username() {
    return  Obx(() {
      return Center(
        child: Text(
          "${controller.loginData.value.data!.firstname} ${controller.loginData.value.data!.lastname}",
          style: Themes.drawerTextWhiteStyle,
        ).marginAll(20),
      );
    });
  }
}
