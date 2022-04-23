import 'package:get/get.dart';

import '../controller/home_controller.dart';
import '../screen/blue_tooth_screen.dart';
import '../screen/home_screen.dart';
import '../screen/item_upload_screen.dart';
import '../screen/view/auth/login/view/login_view.dart';
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
];

final HomeController controller = Get.find();
String checkAuthenticateAndRedirect() {
  return controller.user.value == null ? loginUrl : homeScreen;
}
