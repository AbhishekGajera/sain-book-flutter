import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/themes/mythemes.dart';

import 'search_company_logic.dart';

class SearchCompanyPage extends StatelessWidget {
  final controller = Get.put(SearchCompanyLogic());
  final state = Get.find<SearchCompanyLogic>().state;

  late BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context =context;
    return ListView(
      children: [
        companyName(),
        companyMobile(),
        companyEmail(),
        status(),
        commenButton()
      ],
    );
  }
  companyName() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.company_name,
      decoration: Themes.textFieldDecoration(hint: "Company Name"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  companyMobile() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.company_mobile,
      decoration: Themes.textFieldDecoration(hint: "Company Mobile"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  companyEmail() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.company_email,
      decoration: Themes.textFieldDecoration(hint: "Company Email"),
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
            value: controller.status_value.value,
            icon: const Icon(Icons.keyboard_arrow_down),
            onChanged: (newValue) {

              controller.setStatusValue(newValue.toString());
            },
            items: controller.status_list.map((value) {
              return DropdownMenuItem(
                value: value.toString(),
                child: Container(
                  child: Text(value.toString(),style: Themes.drawerTexeStyle,),
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
          controller.performLoginClick(context);
        },
        child:  Text(
          "Search",
          style: Themes.drawerTextWhiteStyle,
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }

}
