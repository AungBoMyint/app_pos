import 'package:bluetooth_print/bluetooth_print_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_and_ecommerce/screen/view/pos_bluetooth_print/controller/blue_print_controller.dart';

class BlueToothPrintScreen extends StatelessWidget {
  const BlueToothPrintScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BluePrintController _controller = Get.find();
    return Obx(
      () {
        if (_controller.resultDevices.isEmpty) {
          return const Center(
            child: Text("Not found any devices"),
          );
        }
        if (_controller.resultDevices.isNotEmpty) {
          return ListView.builder(
            itemCount: _controller.resultDevices.length,
            itemBuilder: (context, index) {
              BluetoothDevice device = _controller.resultDevices[index];
              return ListTile(
                selectedColor: Colors.green,
                selected: _controller.connectedDevice.value == device,
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text("$index",
                      style: const TextStyle(
                        color: Colors.white,
                      )),
                ),
                title: Text(device.name ?? ""),
                subtitle: Text(device.address ?? ""),
                trailing: Text(
                    _controller.connectedDevice.value == device
                        ? "Connected"
                        : "Connect",
                    style: const TextStyle(
                      color: Colors.black,
                    )),
              );
            },
          );
        }
        return Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: CircularProgressIndicator(),
                ),
                Text("Scanning....."),
              ]),
        );
      },
    );
  }
}
