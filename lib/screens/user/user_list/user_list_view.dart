import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/network/UrlConst.dart';

import '../../../other/images.dart';
import '../../../themes/mythemes.dart';
import '../search_user/user_logic.dart';

class UserListPage extends StatelessWidget {
  final controller = Get.find<SearchUserLogic>();
  var userType = [
    "",
    "Administrator",
    "Company Admin",
    "Godown Admin",
    "Company Employee",
    "GoDown Employee",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.black87,
      ),
      body: Obx(
        () {
          return controller.userlistData.value.flag != 0
              ? ListView.builder(
                  itemCount: controller.userlistData.value.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: Themes.borderRadius),
                      tileColor: Colors.white,
                      leading: loadUserImage(controller
                          .userlistData.value.data![index].image
                          .toString()),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${controller.userlistData.value.data![index].firstname.toString()} ${controller.userlistData.value.data![index].lastname.toString()}",
                            style: Themes.listTileTextStyle,
                          ),
                          Text(
                              "${controller.userlistData.value.data![index].userEmail.toString()}",
                              style: Themes.listTileTextStyle12),
                          Text(
                            "${userType[int.parse(controller.userlistData.value.data![index].userTypeId.toString())]}",
                            style: Themes.listTileTextStyle12,
                          ),
                          Text(
                            "Login :- ${controller.userlistData.value.data![index].lastloginDate}",
                            style: Themes.listTileTextStyle12,
                          ),
                        ],
                      ),
                      trailing: CupertinoButton(
                        child: Text(
                          "Edit",
                          style: Themes.listTileTextStyle14Blue,
                        ),
                        onPressed: () {
                          controller.performEditUserClick(context,controller.userlistData.value.data![index]);
                        },
                      ),
                    ).marginAll(5);
                  },
                )
              : Container(
                  child: Center(
                    child: Text(
                      "No Data Found",
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
