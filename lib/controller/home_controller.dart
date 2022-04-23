import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pos_and_ecommerce/constant/constant.dart';
import 'package:pos_and_ecommerce/model/order_item.dart';
import 'package:pos_and_ecommerce/widgets/show_loading/show_loading.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/constant.dart';
import '../model/product_item.dart';
import '../model/pos/coupon.dart';
import '../routes/routes.dart';
import '../service/api.dart';
import '../service/auth.dart';
import '../service/database.dart';

class HomeController extends GetxController {
  final Auth _auth = Auth();
  final Database _database = Database();
  final Api _api = Api();
  final ImagePicker _imagePicker = ImagePicker();

  final RxBool authorized = false.obs;
  final Rxn<User?> user = Rxn<User?>(null);

  final RxBool phoneState = false.obs;
  final codeSentOnWeb = false.obs; //codeSentOnWeb on Web
  final TextEditingController _phoneCodeController =
      TextEditingController(); //On Web
  late SharedPreferences
      sharedPref; //Share Preference to Store User's Order Data
  String? townshipName; //Township Name
  var checkOutStep = 0.obs; //Check Out Step
  var bankSlipImage = "".obs;
  Map<String, dynamic> townShipNameAndFee = {}; //Township Name and Fee

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController verificationController = TextEditingController();


  final RxList<ProductItem> items = <ProductItem>[].obs;
  final RxList<ProductItem> brandItems = <ProductItem>[].obs; //Brand Item
  final RxList<ProductItem> exportAndBrandItems = <ProductItem>[].obs;
  final RxList<ProductItem> searchitems = <ProductItem>[].obs;

  final RxList<OrderItem> orderItemList = <OrderItem>[].obs; ////
/////////////////

  final RxBool isLoading = false.obs;
  Rxn<ProductItem?> editItem = Rxn<ProductItem?>(null);
  final RxList<String> categoryList = <String>[].obs;

  void setEditItem(ProductItem? model) {
    editItem.value = model;
  }

  @override
  void onInit() async {
    super.onInit(); // SharedPreference to Stroe
    _database.watch(productCollection).listen((event) {
      items.value =
          event.docs.map((e) => ProductItem.fromJson(e.data())).toList();
      refreshTotalProductAndRemainProduct();
    });
    _database.watch(itemCollection).listen((event) {
      categoryList.value =
          event.docs.map((e) => e.data()["category"] as String).toList();
    });
    /**TODO TO MOVE THIS FUNCTION ONLY IF USER IS ADMIN */
    _database.watchOrder(purchaseCollection).listen((event) {
      if (event.docs.isEmpty) {
        orderItemList.clear();
      } else {
        orderItemList.value =
            event.docs.map((e) => OrderItem.fromJson(e.data())).toList();
        debugPrint("*****Total purchase: ${orderItemList.length}");
      }
    });

    ///
    _auth.onAuthChange().listen((_) async {
      if (_ == null) {
        authorized.value = false;
      } else {
        user.value = _;
        authorized.value = true;
        await _database.write(
          userCollection,
          data: {
            'uid': _.uid,
            'phone': _.phoneNumber,
          },
          path: _.uid,
        );
      }
    });
  }

  /***New Add Variable and Function for POS*/
  var pieTouchIndex = -1.obs;
  var totalProduct = 0.obs;
  var remainProduct = 0.obs;
  RxList<Coupon> couponList = <Coupon>[].obs;
  Future<DocumentSnapshot<Map<String, dynamic>>> getDaysSales() async {
    return _database.getDaysInCurrentMonthList();
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getMonthsSales() async {
    return _database.getMonthlySalesData();
  }

  void refreshTotalProductAndRemainProduct() {
    totalProduct.value = 0;
    remainProduct.value = 0;
    if (items.isNotEmpty) {
      items.forEach((element) {
        totalProduct.value += element.originalQuantity;
        remainProduct.value += element.remainQuantity;
      });
    }
  }

  Future<void> addCoupon({required Coupon coupon}) async {
    _database.uploadCoupon(coupon);
  }

  Future<void> removeCoupon({required String documentID}) async {
    _database.deleteCoupon(documentID);
  }

  String? checkCouponIsValid(String? value) {
    return (couponList.isNotEmpty &&
            couponList.last.code == value &&
            DateTime.now().isBefore(couponList.last.expireDate))
        ? null
        : "Coupon is not valid";
  }

  bool checkCouponNotExistOrExpired() {
    return couponList.isEmpty ||
        DateTime.now().isAfter(couponList.last.expireDate);
  }

  Future<void> deleteProduct(String pathID) async {
    showLoading();
    await _database.delete(itemCollection, path: pathID);
    hideLoading();
    Get.back();
  }

  Future<void> signInWithGoogle() async {
    showLoading();
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      await FirebaseAuth.instance.signInWithCredential(credential);
      hideLoading();
      Get.offNamed(homeScreen);
    } catch (e) {
      hideLoading();
    }
  }

  Future<void> signInAnonymous() async {
    showLoading();
    try {
      await FirebaseAuth.instance.signInAnonymously();
      hideLoading();
      Get.offNamed(homeScreen);
      debugPrint("***Signed in with temporary account.");
    } on FirebaseAuthException catch (e) {
      hideLoading();
      switch (e.code) {
        case "operation-not-allowed":
          debugPrint(
              "****Anonymous auth hasn't been enabled for this project.");
          break;
        default:
          debugPrint("***Unkown error.");
      }
    }
  }

  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
    Get.offNamed(loginUrl);
  }
}
