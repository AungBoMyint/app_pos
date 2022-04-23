import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pos_and_ecommerce/constant/constant.dart';
import 'package:pos_and_ecommerce/widgets/show_loading/show_loading.dart';
import 'package:uuid/uuid.dart';

import '../data/constant.dart';
import '../model/product_item.dart';
import '../service/api.dart';
import '../service/database.dart';
import 'home_controller.dart';

class UploadController extends GetxController {
  final RxBool isUploading = false.obs;

  final HomeController _homeController = Get.find();

  @override
  void onInit() {
    super.onInit();

    if (!(_homeController.editItem.value == null)) {
      photoController.text = _homeController.editItem.value!.image;
      nameController.text = _homeController.editItem.value!.productName;
      priceController.text = _homeController.editItem.value!.price.toString();

      colorController.text = _homeController.editItem.value!.color;
      sizeController.text = _homeController.editItem.value!.size;
      categoryController.text = _homeController.editItem.value!.category;
      originalPriceController.text =
          _homeController.editItem.value!.originalPrice.toString();
      originalQuantityController.text =
          _homeController.editItem.value!.originalQuantity.toString();
      remainQuantityController.text =
          _homeController.editItem.value!.remainQuantity.toString();
    }
  }

  final Api _api = Api();
  final Database _database = Database();
  final ImagePicker _imagePicker = ImagePicker();

  final RxString filePath = ''.obs;

  final GlobalKey<FormState> form = GlobalKey();

  final TextEditingController photoController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController colorController = TextEditingController();
  final TextEditingController sizeController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController originalPriceController = TextEditingController();
  final TextEditingController originalQuantityController =
      TextEditingController();
  final TextEditingController remainQuantityController =
      TextEditingController();

  Future<void> pickImage() async {
    try {
      final XFile? _file =
          await _imagePicker.pickImage(source: ImageSource.gallery);
      if (_file != null) filePath.value = _file.path;
    } catch (e) {
      print("pickImage error $e");
    }
  }

  String? validator(String? data) => data?.isEmpty == true ? 'empty' : null;

  Future<void> delete(String productID) async {
    showLoading();
    await _database.delete(productCollection, path: productID);
    hideLoading();
    Get.back();
    //Get.back();
  }

  Future<void> upload() async {
    showLoading();
    try {
      if (form.currentState?.validate() == true) {
        if (!(_homeController.editItem.value == null)) {
          await _database.update(
            productCollection,
            path: _homeController.editItem.value!.id,
            data: _homeController.editItem.value!
                .copyWith(
                  id: _homeController.editItem.value!.id,
                  image: photoController.text,
                  productName: nameController.text,
                  price: int.parse(priceController.text),
                  originalPrice: int.parse(originalPriceController.text),
                  originalQuantity: int.parse(originalQuantityController.text),
                  remainQuantity: int.parse(remainQuantityController.text),
                  color: colorController.text,
                  size: sizeController.text,
                  category: categoryController.text,
                )
                .toJson(),
          );
        } else {
          final id = Uuid().v1();
          await _database.write(
            productCollection,
            path: id,
            data: ProductItem(
              id: id,
              image: photoController.text,
              productName: nameController.text,
              price: int.parse(priceController.text),
              originalPrice: int.parse(originalPriceController.text),
              originalQuantity: int.parse(originalQuantityController.text),
              remainQuantity: int.parse(remainQuantityController.text),
              color: colorController.text,
              size: sizeController.text,
              category: categoryController.text,
            ).toJson(),
          );
        }
        hideLoading();
        Get.back();
        Get.snackbar('Success', 'Uploaded successfully!');
        filePath.value = '';
        photoController.clear();
        nameController.clear();
        priceController.clear();
        colorController.clear();
        sizeController.clear();
        categoryController.clear();
        originalPriceController.clear();
        originalQuantityController.clear();
        remainQuantityController.clear();
        return;
      }
      hideLoading();
      isUploading.value = false;
      Get.snackbar('Required', 'Image is required');
    } catch (e) {
      hideLoading();
      isUploading.value = false;
      print("upload error $e");
    }
  }
}
