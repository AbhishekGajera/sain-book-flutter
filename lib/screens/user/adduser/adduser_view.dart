import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../other/images.dart';
import '../../../themes/mythemes.dart';
import 'adduser_logic.dart';

class AdduserPage extends StatelessWidget {
  final controller = Get.put(AdduserLogic());
  late BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return ListView(
      children: [
        profileImage(),
        firstName(),
        lastname(),
        email(),
        password(),
        rePassword(),
        mobileNumber(),
        gender(),
        userrole(),
        status(),
        company(),
        commenButton()
      ],
    );
  }

  firstName() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.firstname,
      decoration: Themes.textFieldDecoration(hint: "FirstName"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  lastname() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.lastname,
      decoration: Themes.textFieldDecoration(hint: "Lastname"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  email() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.email,
      decoration: Themes.textFieldDecoration(hint: "Email"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  password() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.password,
      decoration: Themes.textFieldDecoration(hint: "Password"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  rePassword() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.repassword,
      decoration: Themes.textFieldDecoration(hint: "Re-Password"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  mobileNumber() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.mobilenumber,
      decoration: Themes.textFieldDecoration(hint: "Mobile Number"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  gender() {
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
                value: controller.genderValue.value,
                icon: const Icon(Icons.keyboard_arrow_down),
                onChanged: (newValue) {
                  controller.setNewValue(newValue.toString());
                },
                items: controller.genderList.map((value) {
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

  userrole() {
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
                value: controller.userRoleValue.value,
                icon: const Icon(Icons.keyboard_arrow_down),
                onChanged: (newValue) {
                  controller.setUserType(newValue.toString());
                },
                items: controller.userroleList.map((value) {
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

  company() {
    return Obx(() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Company",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 17),
          ).marginAll(5),
          Row(
            children: [
              Checkbox(
                value: controller.All.value,
                onChanged: (value) {
                  controller.selectAllCompany(value!);
                  if (value == true) {
                    controller.All.value = true;
                    controller.khantil.value = true;
                    controller.vandshop.value = true;
                    controller.kadleefashion.value = true;
                  } else {
                    controller.All.value = false;
                    controller.khantil.value = false;
                    controller.vandshop.value = false;
                    controller.kadleefashion.value = false;
                  }
                },
              ),
              Text("ALL")
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: controller.khantil.value,
                onChanged: (value) {
                  controller.selectOneCompany(value!,1);
                  controller.khantil.value =
                      controller.khantil.value ? false : true;

                },
              ),
              Text("KHANTIL")
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: controller.vandshop.value,
                onChanged: (value) {
                  controller.selectOneCompany(value!,2);
                  controller.vandshop.value =
                      controller.vandshop.value ? false : true;
                },
              ),
              Text("VANDVSHOP")
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: controller.kadleefashion.value,
                onChanged: (value) {
                  controller.selectOneCompany(value!,3);
                  controller.kadleefashion.value =
                      controller.kadleefashion.value ? false : true;

                },
              ),
              Text("KADLEEFASHION")
            ],
          )
        ],
      ).marginOnly(left: 20, right: 20);
    });
  }

  status() {
    return Obx(
      () {
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
            value: controller.statuDropdownValue.value,
            icon: const Icon(Icons.keyboard_arrow_down),
            onChanged: (status_value) {
              controller.changeUserStatus(status_value.toString());
            },
            items: controller.userstatus.map(
              (value) {
                return DropdownMenuItem(
                  value: value.toString(),
                  child: Container(
                    child: Text(value.toString()),
                  ),
                );
              },
            ).toList(),
          ).marginOnly(left: 10, right: 10),
        ).marginOnly(left: 20, right: 20, top: 10);
      },
    );
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

  profileImage() {
    return Column(
      children: [
        Center(
          child: Center(
            child: CircleAvatar(
              radius: 60, // Image radius
              backgroundImage: AssetImage(sainbooktransparent),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            controller.performImageSelect();
          },
          icon: Icon(
            Icons.camera_alt_outlined,
            size: 25,
          ),
        )
      ],
    );
  }
}
