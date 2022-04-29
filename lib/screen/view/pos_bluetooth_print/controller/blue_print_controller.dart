import 'dart:convert';
import 'dart:typed_data';

import 'package:bluetooth_print/bluetooth_print.dart';
import 'package:bluetooth_print/bluetooth_print_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pos_and_ecommerce/widgets/show_loading/show_loading.dart';

import '../../../../model/order_item.dart';
import '../../../../utils/utils.dart';
import '../view/blue_tooth_screen.dart';

class BluePrintController extends GetxController {
  final BluetoothPrint _bluetoothPrint = BluetoothPrint.instance;
  Rxn<BluetoothDevice?> connectedDevice = Rxn<BluetoothDevice?>(null);
  RxList<BluetoothDevice> resultDevices = <BluetoothDevice>[].obs;
  var isConnected = false.obs;
  var isBluetoothOpen = false.obs;
  var isInitialized = true.obs;

  Future<void> connectToDevice(BluetoothDevice device) async {
    await _bluetoothPrint
        .connect(device)
        .then((value) => connectedDevice.value = device);
  }

  Future<void> startBlueScan({required OrderItem item}) async {
    try {
      isBluetoothOpen.value = true;
      showLoading();
      await _bluetoothPrint
          .startScan(timeout: const Duration(seconds: 3))
          .then((value) => hideLoading());
      bluePrintDialog(item);
    } catch (e) {
      isBluetoothOpen.value = false;
      hideLoading();
      showBlueWarnning();
    }
  }

  @override
  void onInit() async {
    super.onInit();
    //start scan

    //Listen devices
    _bluetoothPrint.scanResults.listen((event) {
      if (event.isEmpty) {
        resultDevices.clear();
      } else {
        resultDevices.value = event;
      }
    });
    //Listen state
    _bluetoothPrint.state.listen((event) {
      switch (event) {
        case BluetoothPrint.CONNECTED:
          isConnected.value = true;
          break;
        case BluetoothPrint.DISCONNECTED:
          isConnected.value = false;
          break;
        default:
          break;
      }
    });
  }

//Bluetooth Print Dialog to Print
  void bluePrintDialog(OrderItem orderItem) {
    Get.defaultDialog(
      barrierDismissible: false,
      onCancel: () => Get.back(),
      onConfirm: (!(connectedDevice == null) && isConnected.value)
          ? () async {
              if (!(connectedDevice == null) && isConnected.value) {
                await printOrder(orderItem);
              }
            }
          : null,
      title: "Choose a device and print",
      content: const BlueToothPrintScreen(),
      textConfirm:
          (!(connectedDevice == null) && isConnected.value) ? "Print" : null,
      textCancel: "Cancel",
      confirmTextColor: (!(connectedDevice == null) && isConnected.value)
          ? Colors.white
          : null,
      cancelTextColor: Colors.black,
    );
  }

  Future<void> printOrder(OrderItem orderItem) async {
    Map<String, dynamic> config = {};
    List<LineText> list = [];
    ByteData data = await rootBundle.load("assets/shopping.jpeg");
    List<int> imageBytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    String base64Image = base64Encode(imageBytes);
    list.add(LineText(
        type: LineText.TYPE_IMAGE,
        content: base64Image,
        align: LineText.ALIGN_CENTER,
        linefeed: 1));

    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: 'Cindy',
        weight: 1,
        align: LineText.ALIGN_CENTER,
        linefeed: 1));
    list.add(LineText(linefeed: 1));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: 'Qty',
        weight: 0,
        align: LineText.ALIGN_LEFT,
        linefeed: 1));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: 'Item',
        align: LineText.ALIGN_LEFT,
        linefeed: 1));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: 'Price',
        align: LineText.ALIGN_LEFT,
        linefeed: 1));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: 'Total',
        align: LineText.ALIGN_LEFT,
        linefeed: 1));
    list.add(LineText(linefeed: 1));
    list.add(LineText(
        linefeed: 1,
        content: "-------------",
        align: LineText.ALIGN_CENTER,
        type: LineText.TYPE_TEXT));
    for (var item in orderItem.itemIdList) {
      list.add(LineText(linefeed: 1));
      list.add(LineText(
          type: LineText.TYPE_TEXT,
          content: '${item.count}',
          weight: 0,
          align: LineText.ALIGN_LEFT,
          linefeed: 1));
      list.add(LineText(
          type: LineText.TYPE_TEXT,
          content: item.productName,
          align: LineText.ALIGN_LEFT,
          linefeed: 1));
      list.add(LineText(
          type: LineText.TYPE_TEXT,
          content: '${item.price}',
          align: LineText.ALIGN_LEFT,
          linefeed: 1));
      list.add(LineText(
          type: LineText.TYPE_TEXT,
          content: '${item.price * item.count!}',
          align: LineText.ALIGN_LEFT,
          linefeed: 1));
    }
    list.add(LineText(
        linefeed: 1,
        content: "-------------",
        align: LineText.ALIGN_CENTER,
        type: LineText.TYPE_TEXT));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: 'TOTAL',
        size: 10,
        align: LineText.ALIGN_LEFT,
        linefeed: 1));
    list.add(LineText(
        type: LineText.TYPE_QRCODE,
        content: '${orderItem.total}',
        size: 10,
        align: LineText.ALIGN_RIGHT,
        linefeed: 1));
    list.add(LineText(
        linefeed: 1,
        content: "-------------",
        align: LineText.ALIGN_CENTER,
        type: LineText.TYPE_TEXT));
    list.add(LineText(
        linefeed: 1,
        content: "-------------",
        align: LineText.ALIGN_CENTER,
        type: LineText.TYPE_TEXT));

    await _bluetoothPrint.printReceipt(config, list);
  }
}
