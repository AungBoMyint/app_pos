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

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  debugPrint('Handling a background message ${message.messageId}');
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseMessaging.instance.subscribeToTopic('order');
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  Get.put(HomeController());
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<void> selectNotification(String? payload) async {
    await Get.toNamed(payload!);
    if (payload != null) {
      debugPrint('***********notification payload: $payload');
    } else {
      debugPrint("************route is null******");
    }
  }

  void onDidReceiveLocalNotification(
      int id, String? title, String? body, String? payload) async {
    // display a dialog with the notification details, tap ok to go to another page
    showDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(title ?? ""),
        content: Text(body ?? ""),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: true,
            child: Text('Ok'),
            onPressed: () async {
              Navigator.of(context, rootNavigator: true).pop();
              await Get.toNamed(payload!);
            },
          )
        ],
      ),
    );
  }

  Future<void> setUpForegroundNotification() async {
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings("@mipmap/ic_launcher");
    final IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings(
            onDidReceiveLocalNotification: onDidReceiveLocalNotification);
    //Initialization Setting
    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );
    //Initialization
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: selectNotification);
    //When user tap on notification.
    /*final notificationAppLaunchDetails =
        await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();
    if (notificationAppLaunchDetails?.didNotificationLaunchApp ?? false) {
      await selectNotification(notificationAppLaunchDetails!.payload);
    }*/
    //OnSelectNotification Callback Function
////
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'Channel ID: 1',
      'your channel name',
      channelDescription: 'your channel description',
      importance: Importance.max,
      priority: Priority.high,
      sound: RawResourceAndroidNotificationSound('noti'),
      ticker: 'ticker',
    );
    const NotificationDetails platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: IOSNotificationDetails(sound: "noti.mp3"));
    //LIsten Notification
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      final noti = message.notification!;
      await flutterLocalNotificationsPlugin.show(
          0, //ID
          noti.title,
          noti.body,
          platformChannelSpecifics,
          payload: message.data["route"]);
      debugPrint("**********Push Reach******");
    });
  }

  @override
  void initState() {
    super.initState();
    setUpForegroundNotification();
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
