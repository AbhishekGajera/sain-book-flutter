import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../DrawerScreen.dart';
import 'godown_instoke_logic.dart';

class Godown_instokePage extends StatelessWidget {
  final controller = Get.put(Godown_instokeLogic());
  final state = Get.find<Godown_instokeLogic>().state;

  late BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
      ),
      drawer: CustomDrawer(),
      body: ListView(
        children: [companyDropDown(), commenButton()],
      ),
    );
  }

  companyDropDown() {
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
                value: controller.company_name.value,
                icon: const Icon(Icons.keyboard_arrow_down),
                onChanged: (newValue) {
                  controller.setUserType(newValue.toString());
                },
                items: controller.company_list.map((value) {
                  return DropdownMenuItem(
                    value: value.toString(),
                    child: Container(
                      child: Text(value.toString()),
                    ),
                  );
                }).toList())
            .marginOnly(left: 10, right: 10),
      ).marginOnly(left: 20, right: 20, top: 5);
    });
  }

  commenButton(){
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.redAccent.shade700,
        ),
        onPressed: () {
          controller.performSearch(context);
        },
        child: const Text(
          "Search",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }







}
