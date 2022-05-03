import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/network/UrlConst.dart';
import 'package:sain_book_project/screens/product/product_search/product_search_logic.dart';

import '../../other/images.dart';
import '../../themes/mythemes.dart';

class ProductList extends StatelessWidget {
  final controller = Get.find<Product_searchLogic>();

  var status = [
    'disable',
    'In stock',
    'out of stock',
    'out of stock',
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
          return controller.productlist.value.flag != 0
              ? ListView.builder(
                  itemCount: controller.productlist.value.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: Themes.borderRadius),
                      tileColor: Colors.white,
                      leading: loadUserImage(controller
                          .productlist.value.data![index].productImage
                          .toString()),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${controller.productlist.value.data![index].productName.toString()}",
                            style: Themes.listTileTextStyle,
                          ),
                          Text(
                              "Location : ${controller.productlist.value.data![index].godownLocation.toString()}",
                              style: Themes.listTileTextStyle12),
                          Text(
                            "Date :${controller.productlist.value.data![index].modifyDate.toString()}",
                            style: Themes.listTileTextStyle12,
                          ),
                          Text(
                            "Status :-${status[int.parse(controller.productlist.value.data![index].productStatus.toString())]}",
                            style: Themes.listTileTextStyle12,
                          ),
                          Text(
                            "Product Qty :-${controller.productlist.value.data![index].productQuantity.toString()}",
                            style: Themes.listTileTextStyle12,
                          ),
                        ],
                      ),
                      // trailing: CupertinoButton(
                      //   child: Text(
                      //     "Edit",
                      //     style: Themes.listTileTextStyle14Blue,
                      //   ),
                      //   onPressed: () {
                      //     controller.performEditUserClick(context, controller.productlist.value.data![index]);
                      //   },
                      // ),
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
