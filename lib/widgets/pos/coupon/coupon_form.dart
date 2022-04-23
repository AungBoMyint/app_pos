import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';

import '../../../controller/pos/sales_controller.dart';

class CouponFormWidget extends StatelessWidget {
  const CouponFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SalesController _saleController = Get.find();
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.35,
      width: size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              controller: _saleController.discountContentController,
              maxLines: 1,
              decoration: const InputDecoration(hintText: "Coupon Content"),
            ),
            TextFormField(
              controller: _saleController.couponCodeController,
              maxLines: 1,
              decoration: const InputDecoration(hintText: "Discount Code"),
            ),
            TextFormField(
              controller: _saleController.percentageController,
              maxLines: 1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Discount %"),
            ),
            SizedBox(
              height: 30,
            ),
            //StartDate and EndDate
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //StartDate
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Start Date",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: -12.0,
                            blurRadius: 12.0,
                          ),
                        ],
                      ),
                      child: Text(
                          "${DateTime.now().year}/${DateTime.now().month}/${DateTime.now().day}"),
                    ),
                  ],
                ),
                //EndDate
                Obx(
                  () => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Expire Date",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          DatePicker.showDatePicker(context,
                              showTitleActions: true,
                              minTime: DateTime.now(),
                              maxTime: DateTime(2025, 6, 7), onChanged: (date) {
                            //print('change $date');
                          }, onConfirm: (date) {
                            _saleController.changeExpireDate(date);
                          },
                              currentTime: DateTime.now(),
                              locale: LocaleType.en);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.red,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.white,
                              ),
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: -12.0,
                                blurRadius: 12.0,
                              ),
                            ],
                          ),
                          child: Text(
                              "${_saleController.expireDate.value!.year}/${_saleController.expireDate.value!.month}/${_saleController.expireDate.value!.day}"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
