import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pos_and_ecommerce/utils/theme.dart';

import '../controller/home_controller.dart';
import '../controller/upload_controller.dart';
import '../data/constant.dart';
import '../widgets/pos/button/button.dart';
import '../widgets/radio/stream_radio.dart';

class UploadItem extends StatefulWidget {
  const UploadItem({Key? key}) : super(key: key);

  @override
  State<UploadItem> createState() => _UploadItemState();
}

class _UploadItemState extends State<UploadItem> {
  final HomeController homecontroller = Get.find();

  @override
  void initState() {
    Get.put(UploadController());
    super.initState();
  }

  @override
  void dispose() {
    homecontroller.setEditItem(null);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final UploadController controller = Get.find();
    return Scaffold(
      backgroundColor: scaffoldBackground,
      appBar: AppBar(
        title: const Text("Product Form"),
        actions: [
          if (!(homecontroller.editItem.value == null)) ...[
            Padding(
              padding: const EdgeInsets.only(
                top: 12.0,
                bottom: 12.0,
              ),
              child: ExButton(
                color: ApplicationTheme().primary,
                label: "Delete",
                onPressed: () =>
                    controller.delete(homecontroller.editItem.value!.id),
              ),
            ),
          ],
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ExButton(
              color: ApplicationTheme().primary,
              label: "Save",
              onPressed: () => controller.upload(),
            ),
          ),
        ],
      ),
      body: Form(
        key: controller.form,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: TextFormField(
                controller: controller.photoController,
                validator: controller.validator,
                decoration: const InputDecoration(
                  hintText: 'Photo Link',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: TextFormField(
                controller: controller.nameController,
                validator: controller.validator,
                decoration: const InputDecoration(
                  hintText: 'Product ????????????',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: TextFormField(
                controller: controller.colorController,
                validator: controller.validator,
                decoration: const InputDecoration(
                  hintText: '??????????????????',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: TextFormField(
                controller: controller.sizeController,
                validator: controller.validator,
                decoration: const InputDecoration(
                  hintText: '???????????????????????????',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            /*Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: TextFormField(
                controller: controller.categoryController,
                validator: controller.validator,
                decoration: const InputDecoration(
                  hintText: '??????????????????????????????',
                  border: OutlineInputBorder(),
                ),
              ),
            ),*/
            //Below is new code
            //Original Price
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: TextFormField(
                controller: controller.originalPriceController,
                validator: controller.validator,
                decoration: const InputDecoration(
                  hintText: '?????????????????????',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: TextFormField(
                controller: controller.priceController,
                validator: controller.validator,
                decoration: const InputDecoration(
                  hintText: '??????????????????????????????',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            //Quantity
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: TextFormField(
                controller: controller.originalQuantityController,
                validator: controller.validator,
                decoration: const InputDecoration(
                  hintText: '?????????????????????????????????????????????',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            //RemainQuantity
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: TextFormField(
                controller: controller.remainQuantityController,
                validator: controller.validator,
                decoration: const InputDecoration(
                  hintText: '????????????????????????????????????????????????',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            //Category
            ExStreamRadio(
              id: "category_name",
              label: "Category",
              valueField: "category_name",
              labelField: "category_name",
              categoryList: homecontroller.productCategoryList,
              keyboardType: TextInputType.text,
              onChanged: (value) => controller.categoryController.text = value,
              value: homecontroller.editItem.value?.category ?? "",
            ),
          ],
        ),
      ),
    );
  }
}
