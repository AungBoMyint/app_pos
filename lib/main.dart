import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:pos_and_ecommerce/routes/routes.dart';
import 'package:pos_and_ecommerce/controller/pos/order_controller.dart';
import 'package:pos_and_ecommerce/controller/main_navigation_controller.dart';
import 'package:pos_and_ecommerce/utils/theme.dart';

import 'controller/home_controller.dart';
import 'screen/view/pos/controller/pos_controller.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(HomeController());
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Get.put(MainNavigationController());
    Get.put(OrderController());
    Get.put(PosController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: checkAuthenticateAndRedirect(),
      getPages: routes,
      theme: appThemeData,
      defaultTransition: Transition.fade,
    );
  }
}
