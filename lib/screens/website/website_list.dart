import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/mythemes.dart';
import 'search_website/search_website_logic.dart';

class WebsiteListPage extends StatelessWidget {
  final controller = Get.put(Search_websiteLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.black87,
      ),
      body: Obx(
        () {
          return controller.websiteList.value.flag != 0
              ? ListView.builder(
                  itemCount: controller.websiteList.value.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: Themes.borderRadius),
                      tileColor: Colors.white,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${controller.websiteList.value.data![index].websiteName.toString()} ",
                            style: Themes.listTileTextStyle,
                          ).marginAll(3),
                          Text(
                            "${controller.websiteList.value.data![index].websiteUrl.toString()}",
                            style: Themes.listTileTextStyle12,
                          ).marginAll(3),
                        ],
                      ),
                      trailing: CupertinoButton(
                        child: Text(
                          "Edit",
                          style: Themes.listTileTextStyle14Blue,
                        ),
                        onPressed: () {
                          controller.performEditClick(context,controller.websiteList.value.data![index]);
                        },
                      ),
                    ).marginAll(5);
                  },
                )
              : Container(
                  child: Center(
                    child: Text(
                      "No Website Found",
                      style: Themes.listTileTextStyle14,
                    ),
                  ),
                );
        },
      ),
    );
  }
}
