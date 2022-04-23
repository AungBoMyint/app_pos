import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_and_ecommerce/controller/home_controller.dart';
import 'package:pos_and_ecommerce/model/product_item.dart';

import '../../../routes/routes.dart';
import '../../../screen/view/pos_inventory/inventory_management.dart';

DataRow resuableDataRow({required ProductItem item}) {
  HomeController _homeController = Get.find();
  return DataRow(cells: <DataCell>[
   /* DataCell(Row(
      children: [
        //UpdateButton
        IconButton(
          onPressed: () {
            _homeController.setEditItem(item);
            Get.toNamed(uploadItemScreen);
          },
          icon: const Icon(
            Icons.edit,
          ),
        ),
        //DeleteButton
        IconButton(
          onPressed: () async {
            //await _manageController.delete(item.id!);
          },
          icon: const Icon(
            Icons.delete,
          ),
        )
      ],
    )),*/
    DataCell(customTableCell(item.id)),
    DataCell(customTableCell(item.productName)),
    DataCell(customTableCell("${item.originalQuantity}")),
    DataCell(customTableCell("${item.remainQuantity}")),
    DataCell(customTableCell("${item.price}ks")),
    DataCell(customTableCell("${item.originalPrice}ks")),
  ]);
}
