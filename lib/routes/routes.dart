import 'package:get/get.dart';
import 'package:pos_and_ecommerce/model/pos/expend_category.dart';
import 'package:pos_and_ecommerce/screen/view/expend/view/expend_view.dart';
import 'package:pos_and_ecommerce/screen/view/product_category/product_category_view.dart';

import '../controller/home_controller.dart';
import '../screen/view/pos_bluetooth_print/view/blue_tooth_screen.dart';
import '../screen/home_screen.dart';
import '../screen/item_upload_screen.dart';
import '../screen/view/auth/login/view/login_view.dart';
import '../screen/view/expend_category/expend_category_view.dart';
import '../screen/view/pos_inventory/inventory_management.dart';
import '../screen/view/pos_sales_analysis/sales_analysis.dart';

const String homeScreen = '/home';
const String checkOutScreen = '/checkout';
const String detailScreen = '/detail';
const String uploadItemScreen = '/uploadItemScreen';
const String mangeItemScreen = '/manage-item';
const String purchaseScreen = '/purchase-screen';
const String blueToothScreen = '/bluetooth-screen';
const String searchScreen = '/searchScreen';
const posUrl = "/pos_url";
const loginUrl = "/login_url";
const salesUrl = "/sales_url";
const inventoryUrl = "/inventory_url";
const couponUrl = "/coupon_url";
const productCategoryUrl = "/product_category_url";
const expendCategoryUrl = "/expend_category_url";
const expendUrl = "/expend_url";

List<GetPage> routes = [
  GetPage(
    name: homeScreen,
    page: () => HomeScreen(),
  ),
  GetPage(
    name: uploadItemScreen,
    page: () => UploadItem(),
  ),
  GetPage(
    name: blueToothScreen,
    page: () => BlueToothPrintScreen(),
  ),
  GetPage(
    name: inventoryUrl,
    page: () => const InventoryManagement(),
  ),
  GetPage(
    name: salesUrl,
    page: () => const SalesAnalysis(),
  ),
  GetPage(
    name: loginUrl,
    page: () => const LoginView(),
  ),
  GetPage(
    name: expendCategoryUrl,
    page: () => const ExpendCategoryView(),
  ),
  GetPage(
    name: expendUrl,
    page: () => const ExpendView(),
  ),
   GetPage(
    name: productCategoryUrl,
    page: () => const ProductCategoryView(),
  ),
];

final HomeController controller = Get.find();
String checkAuthenticateAndRedirect() {
  return controller.user.value == null ? loginUrl : homeScreen;
}
