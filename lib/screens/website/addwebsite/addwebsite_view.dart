import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/model/WebsiteListModel.dart';
import 'package:sain_book_project/themes/mythemes.dart';

import 'addwebsite_logic.dart';

class AddwebsitePage extends StatelessWidget {
  final controller = Get.put(AddwebsiteLogic());
  final state = Get.find<AddwebsiteLogic>().state;

  late BuildContext context;

  AddwebsitePage({Data? website}){
    if(website!=null){
      controller.websiteName.text  = website.websiteName!;
      controller.websiteUrl.text = website.websiteUrl!;
      controller.websiteStatusValue = int.parse(website.websiteStatus.toString());
      controller.statusValue.value = website.websiteStatus.toString()=="1"?"Enable":"Disable";
    }else{
      controller.websiteName.text  = "";
      controller.websiteUrl.text = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return ListView(
      children: [
        websiteName(),
        websiteUrl(),
        status(),
        commenButton(),
      ],
    );
  }

  websiteName() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.websiteName,
      decoration: Themes.textFieldDecoration(hint: "Website Name"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  websiteUrl() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.websiteUrl,
      decoration: Themes.textFieldDecoration(hint: "Website Url"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }


  status() {
    return Obx(() {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5),
        ),
        child: DropdownButton(
            isExpanded: true,
            underline: Container(),
            iconSize: 24,
            elevation: 16,
            value: controller.statusValue.value,
            icon: const Icon(Icons.keyboard_arrow_down),
            onChanged: (value) {
              controller.setNewValue(value.toString());
            },
            items: controller.statusList.map((value) {
              return DropdownMenuItem(
                value: value.toString(),
                child: Container(
                  child: Text(value.toString()),
                ),
              );
            }).toList())
            .marginOnly(left: 10, right: 10),
      ).marginOnly(left: 20, right: 20, top: 10);
    });
  }



  commenButton() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.redAccent.shade700,
        ),
        onPressed: () {
          controller.performAddWebsite(context);
        },
        child: const Text(
          "Save",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }


}
