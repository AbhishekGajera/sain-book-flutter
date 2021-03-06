import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/model/CompanyListModel.dart';
import 'package:sain_book_project/themes/mythemes.dart';

import 'add_company_logic.dart';

class AddCompanyPage extends StatelessWidget {
  final controller = Get.put(AddCompanyLogic());
  final state = Get.find<AddCompanyLogic>().state;

  late BuildContext context;

  AddCompanyPage({Data? company}) {
    if(company!=null){
      controller.company_name.text = company.companyName!;
      controller.company_code.text = company.code!;
      controller.company_email.text = company.companyEmail!;
      controller.company_mobile.text=company.companyMobile!;
      controller.company_website.text =company.companyWebsite!;
      controller.company_address.text =company.companyAddress!;
      controller.companyStatusValue = int.parse(company.companyStatus.toString());
      controller.status_value.value = company.companyStatus.toString()=="1"?"Enable":"Disable";
    }else{
      controller.company_name.text = "";
      controller.company_code.text = "";
      controller.company_email.text = "";
      controller.company_mobile.text="";
      controller.company_website.text ="";
      controller.company_address.text ="";
      controller.companyStatusValue =-1;
      controller.status_value.value="Select Status";
    }
  }
  @override
  Widget build(BuildContext context) {
    this.context =context;
    return ListView(
      children: [
        companyName(),
        companyCode(),
        companyEmail(),
        companyMobile(),
        companyWebsite(),
        companyAddress(),
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

  companyCode() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.company_code,
      decoration: Themes.textFieldDecoration(hint: "Company Code"),
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

  companyWebsite() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.company_website,
      decoration: Themes.textFieldDecoration(hint: "Company Website"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  companyAddress() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.company_address,
      decoration: Themes.textFieldDecoration(hint: "Company Address"),
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
        child: const Text(
          "Save",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }
}
