import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/mythemes.dart';
import 'customer_sell_logic.dart';

class CustomerSellList extends StatelessWidget {
  final controller = Get.find<Customer_sellLogic>();
  late BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.black87,
      ),
      body: Obx(
        () {
          return controller.billList.value.flag != 0
              ? controller.billList.value.data != null &&
                      controller.billList.value.data!.isNotEmpty
                  ? ListView.builder(
                      itemCount: controller.billList.value.data!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: Themes.borderRadius),
                          tileColor: Colors.white,
                          title: controller.billList.value.data != null
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${controller.billList.value.data![index].customerName.toString()}",
                                      style: Themes.listTileTextStyle,
                                    ),
                                    Text(
                                        "${controller.billList.value.data![index].customerEmail.toString()}",
                                        style: Themes.listTileTextStyle12),
                                    Text(
                                      "Bill Sub Total :- ${controller.billList.value.data![index].billSubTotal}",
                                      style: Themes.listTileTextStyle12,
                                    ),
                                    Text(
                                      "Bill Grand Total :- ${controller.billList.value.data![index].billGrandTotal}",
                                      style: Themes.listTileTextStyle12,
                                    ),
                                    Text(
                                      "modify_date:- ${controller.billList.value.data![index].modifyDate}",
                                      style: Themes.listTileTextStyle12,
                                    ),
                                    Text(
                                      "reg_date:- ${controller.billList.value.data![index].regDate}",
                                      style: Themes.listTileTextStyle12,
                                    ),
                                  ],
                                )
                              : Container(),
                          trailing: CupertinoButton(
                            child: Text(
                              "Edit",
                              style: Themes.listTileTextStyle14Blue,
                            ),
                            onPressed: () {
                              controller.performEditBillSearch(context,
                                  controller.billList.value.data![index]);
                            },
                          ),
                        ).marginAll(5);
                      },
                    )
                  : Container(
                      child: ShowData(),
                    )
              : noDataFound();
        },
      ),
    );
  }

  noDataFound() {
    return Container(
      child: Center(
        child: Text(
          "No Data Found",
          style: Themes.listTileTextStyle14,
        ),
      ),
    );
  }

  ShowData() {
    return Obx(() {
      return controller.billList.value.data_object != null
          ? Container(
              color: Colors.white,
              child: Column(
                children: [
                  Table(
                    border: TableBorder.all(),
                    children: [
                      TableRow(children: [
                        Center(
                          child: Text(
                            'Bill No.',
                            style: Themes.tableTitalColor,
                            textAlign: TextAlign.center,
                          ),
                        ).marginAll(7),
                        Center(
                          child: Text(
                              controller
                                  .billList.value.data_object!.customerSellId
                                  .toString(),
                              style: Themes.tableTitalColor,
                              textAlign: TextAlign.center),
                        ).marginAll(7),
                      ]),
                      TableRow(children: [
                        Center(
                          child: Text(
                            'Customer Name',
                            style: Themes.tableTitalColor,
                            textAlign: TextAlign.center,
                          ),
                        ).marginAll(7),
                        Center(
                          child: Text(
                              controller
                                  .billList.value.data_object!.customerName
                                  .toString(),
                              style: Themes.tableTitalColor,
                              textAlign: TextAlign.center),
                        ).marginAll(7),
                      ]),
                      TableRow(children: [
                        Center(
                          child: Text(
                            'Invoice No',
                            style: Themes.tableTitalColor,
                            textAlign: TextAlign.center,
                          ),
                        ).marginAll(7),
                        Center(
                          child: Text(
                              controller.billList.value.data_object!.invoiceNo
                                  .toString(),
                              style: Themes.tableTitalColor,
                              textAlign: TextAlign.center),
                        ).marginAll(7),
                      ]),
                      TableRow(children: [
                        Center(
                          child: Text(
                            'Mobile',
                            style: Themes.tableTitalColor,
                            textAlign: TextAlign.center,
                          ),
                        ).marginAll(7),
                        Center(
                          child: Text("",
                              style: Themes.tableTitalColor,
                              textAlign: TextAlign.center),
                        ).marginAll(7),
                      ]),
                      TableRow(children: [
                        Center(
                          child: Text(
                            'Bill Date',
                            style: Themes.tableTitalColor,
                            textAlign: TextAlign.center,
                          ),
                        ).marginAll(7),
                        Center(
                          child: Text(
                              controller.billList.value.data_object!.billDate
                                  .toString(),
                              style: Themes.tableTitalColor,
                              textAlign: TextAlign.center),
                        ).marginAll(7),
                      ]),
                      TableRow(children: [
                        Center(
                          child: Text(
                            'Bill Due Date',
                            style: Themes.tableTitalColor,
                            textAlign: TextAlign.center,
                          ),
                        ).marginAll(7),
                        Center(
                          child: Text(
                              controller.billList.value.data_object!.billDueDate
                                  .toString(),
                              style: Themes.tableTitalColor,
                              textAlign: TextAlign.center),
                        ).marginAll(7),
                      ]),
                      TableRow(children: [
                        Center(
                          child: Text(
                            'Total Amount',
                            style: Themes.tableTitalColor,
                            textAlign: TextAlign.center,
                          ),
                        ).marginAll(7),
                        Center(
                          child: Text(
                              controller
                                  .billList.value.data_object!.billGrandTotal
                                  .toString(),
                              style: Themes.tableTitalColor,
                              textAlign: TextAlign.center),
                        ).marginAll(7),
                      ]),
                      TableRow(children: [
                        Center(
                          child: Text(
                            'Quantity',
                            style: Themes.tableTitalColor,
                            textAlign: TextAlign.center,
                          ),
                        ).marginAll(7),
                        Center(
                          child: Text("",
                              style: Themes.tableTitalColor,
                              textAlign: TextAlign.center),
                        ).marginAll(7),
                      ]),
                      TableRow(children: [
                        Center(
                          child: Text(
                            'Payment Status',
                            style: Themes.tableTitalColor,
                            textAlign: TextAlign.center,
                          ),
                        ).marginAll(7),
                        Center(
                          child: Text(
                              controller
                                  .billList.value.data_object!.paymentReceive
                                  .toString(),
                              style: Themes.tableTitalColor,
                              textAlign: TextAlign.center),
                        ).marginAll(7),
                      ]),
                      TableRow(children: [
                        Center(
                          child: Text(
                            'Payment Method',
                            style: Themes.tableTitalColor,
                            textAlign: TextAlign.center,
                          ),
                        ).marginAll(7),
                        Center(
                          child: Text(
                              controller
                                  .billList.value.data_object!.paymentMethod
                                  .toString(),
                              style: Themes.tableTitalColor,
                              textAlign: TextAlign.center),
                        ).marginAll(7),
                      ]),
                    ],
                  ),
                  Container(
                    child: CupertinoButton(
                      child: Text(
                        "Edit",
                        style: Themes.listTileTextStyle14Blue,
                      ),
                      onPressed: () {
                        controller.performEditBillSearch(
                            context, controller.billList.value.data_object!);
                      },
                    ),
                  ).marginAll(10)
                ],
              ),
            )
          : Container(
              child: Center(
                child: Text("No Data Found"),
              ),
            );
    });
  }
}
