import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../model/product_item.dart';
import '../utils/theme.dart';
import '../widgets/pos/button/button.dart';
import '../widgets/textfield/row_textfield.dart';
import '../widgets/textfield/textfield_format.dart';

class OrderDetailView extends StatelessWidget {
  final List<ProductItem> productList;
  final int pay;
  final int total;
  const OrderDetailView({
    Key? key,
    required this.productList,
    required this.pay,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Order Detail",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: ListView.builder(
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  var item = productList[index];

                  return Card(
                    color: Colors.white,
                    elevation: 0.0,
                    child: Container(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        children: [
                          CachedNetworkImage(
                            imageUrl: item.image,
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                            progressIndicatorBuilder: (context, url, status) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    value: status.progress,
                                  ),
                                ),
                              );
                            },
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Container(
                              height: 50.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Spacer(),
                                  Text(item.productName),
                                  const SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    item.category,
                                    style: const TextStyle(
                                      fontSize: 8.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4.0,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "${item.price}ks",
                                        style: const TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        width: 38.0,
                                        child: Center(
                                          child: Text(
                                            "x ${item.count}",
                                            style: const TextStyle(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            color: Colors.grey[200],
            width: Get.width,
            child: Column(
              children: [
                ExRowTextField(
                  onChanged: (value) {},
                  onSubmitted: (value) {},
                  id: "pay",
                  label: "Pay",
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.number,
                  format: TextFieldFormat.money,
                  value: "$pay",
                  enabled: false,
                ),
                ExRowTextField(
                  onChanged: (value) {},
                  onSubmitted: (value) {},
                  id: "change",
                  label: "Change",
                  textAlign: TextAlign.right,
                  format: TextFieldFormat.money,
                  keyboardType: TextInputType.number,
                  enabled: false,
                  value: "0",
                ),
              ],
            ),
          ),
          Container(
            color: theme.disabled,
            width: Get.width,
            padding: theme.normalPadding,
            child: Row(
              children: [
                Text(
                  "Total: $total ks",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  width: 100.0,
                ),
                Expanded(
                  child: ExButton(
                    color: ApplicationTheme().primary,
                    label: "Save",
                    height: 40.0,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
