import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/screens/company/search_company/search_company_logic.dart';

import '../../themes/mythemes.dart';

class CompanyListPage extends StatelessWidget {
  final controller = Get.put(SearchCompanyLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.black87,
      ),
      body: Obx(
        () {
          return controller.companyList.value.flag != 0
              ? ListView.builder(
                  itemCount: controller.companyList.value.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: Themes.borderRadius),
                      tileColor: Colors.white,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${controller.companyList.value.data![index].companyName.toString()} ",
                            style: Themes.listTileTextStyle,
                          ).marginAll(3),
                          Text(
                            "Mobile : ${controller.companyList.value.data![index].companyMobile.toString()}",
                            style: Themes.listTileTextStyle12,
                          ).marginAll(3),
                          Text(
                            "Email : ${controller.companyList.value.data![index].companyEmail.toString()}",
                            style: Themes.listTileTextStyle12,
                          ).marginAll(3),
                          Text(
                            "Website : ${controller.companyList.value.data![index].companyWebsite.toString()}",
                            style: Themes.listTileTextStyle12,
                          ).marginAll(3),
                          Text(
                            "Address :${controller.companyList.value.data![index].companyAddress.toString()}",
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
                          controller.performEditClick(context,controller.companyList.value.data![index]);
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
