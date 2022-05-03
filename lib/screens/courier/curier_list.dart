import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/screens/courier/search_courier/search_courier_logic.dart';

import '../../themes/mythemes.dart';

class CurierListPage extends StatelessWidget {
  final controller = Get.put(SearchCourierLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.black87,
      ),
      body: Obx(
        () {
          return controller.courierList.value.flag != 0
              ? ListView.builder(
                  itemCount: controller.courierList.value.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: Themes.borderRadius),
                      tileColor: Colors.white,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${controller.courierList.value.data![index].courierName.toString()} ",
                            style: Themes.listTileTextStyle,
                          ).marginAll(3),
                          Text(
                            "website :- ${controller.courierList.value.data![index].courierWebsite.toString()}",
                            style: Themes.listTileTextStyle12,
                          ).marginAll(3),
                          Text(
                            "Cod :- ${controller.courierList.value.data![index].cod.toString() == "1" ? "Yes" : "No"}",
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
                          controller.performEditClick(context,controller.courierList.value.data![index]);
                        },
                      ),
                    ).marginAll(5);
                  },
                )
              : Container(
                  child: Center(
                    child: Text(
                      "No Courier Found",
                      style: Themes.listTileTextStyle14,
                    ),
                  ),
                );
        },
      ),
    );
  }
}
