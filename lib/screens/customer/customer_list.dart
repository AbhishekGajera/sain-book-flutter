import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/themes/mythemes.dart';

import '../../network/UrlConst.dart';
import '../../other/images.dart';
import 'add_customer/add_customer_logic.dart';
import 'search_customer/search_customer_logic.dart';

class CustomerListPage extends StatelessWidget {
  final controller = Get.put(Search_customerLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.black87,
      ),
      body: Obx(
        () {
          return controller.customerList.value.flag != 0
              ? ListView.builder(
                  itemCount: controller.customerList.value.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: Themes.borderRadius),
                      tileColor: Colors.white,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${controller.customerList.value.data![index].customerName.toString()}",
                            style: Themes.listTileTextStyle,
                          ).marginAll(5),
                          Text(
                              "Email:${controller.customerList.value.data![index].customerEmail.toString()}",
                              style: Themes.listTileTextStyle12).marginAll(3),
                          Text(
                            "Mobile: ${controller.customerList.value.data![index].customerMobile.toString()}",
                            style: Themes.listTileTextStyle12,
                          ).marginAll(3),
                          Text(
                            "Mobile1: ${controller.customerList.value.data![index].customerMobile1.toString()}",
                            style: Themes.listTileTextStyle12,
                          ).marginAll(3),
                          Text(
                            "Address : ${controller.customerList.value.data![index].customerAddress.toString()}",
                            style: Themes.listTileTextStyle12,
                          ).marginAll(3),
                          Text(
                            "Name : ${controller.customerList.value.data![index].agencyName.toString()}",
                            style: Themes.listTileTextStyle12,
                          ).marginAll(3),
                          Text(
                            "Agency Mobile : ${controller.customerList.value.data![index].agencyMobile.toString()}",
                            style: Themes.listTileTextStyle12,
                          ).marginAll(3),
                          Text(
                            "Term : ${controller.customerList.value.data![index].termId.toString()}",
                            style: Themes.listTileTextStyle12,
                          ).marginAll(3)
                        ],
                      ),
                      trailing: CupertinoButton(
                        child: Text(
                          "Edit",
                          style: Themes.listTileTextStyle14Blue,
                        ),
                        onPressed: () {
                          controller.performEditClick(context,controller.customerList.value.data![index]);
                        },
                      ),
                    ).marginAll(5);
                  },
                )
              : Container(
                  child: Center(
                    child: Text(
                      "No Customer Found",
                      style: Themes.listTileTextStyle14,
                    ),
                  ),
                );
        },
      ),
    );
  }

  loadUserImage(String url) {
    String imageurl = getImageBaseUrl(endpoint: url);
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 25,
      child: ClipOval(
        child: CachedNetworkImage(
          fit: BoxFit.cover,
          width: 50,
          height: 50,
          imageUrl: imageurl,
          placeholder: (context, url) => Image(
            image: AssetImage(userplaceholder),
            height: 50,
            width: 50,
          ),
          errorWidget: (context, url, error) {
            return Image(
              image: AssetImage(userplaceholder),
              height: 50,
              width: 50,
            );
          },
        ),
      ),
    );
  }


}
