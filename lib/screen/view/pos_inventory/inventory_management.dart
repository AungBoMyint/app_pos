import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pos_and_ecommerce/controller/home_controller.dart';
import 'package:pos_and_ecommerce/routes/routes.dart';
import 'package:pos_and_ecommerce/widgets/pos/inventory_widget/data_row.dart';

import '../../../widgets/pos/inventory_widget/inventory_piechart.dart';

class InventoryManagement extends StatefulWidget {
  const InventoryManagement({Key? key}) : super(key: key);

  @override
  State<InventoryManagement> createState() => _InventoryManagementState();
}

class _InventoryManagementState extends State<InventoryManagement> {
  @override
  Widget build(BuildContext context) {
    HomeController _controller = Get.find();
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.indigo),
          title: const Text(
            "Stock Management",
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                wordSpacing: 2,
                letterSpacing: 1),
          ),
          leading: const BackButton(color: Colors.black),
          centerTitle: true,
          /*actions: [
            IconButton(
                onPressed: () {
                
                  Get.toNamed(uploadItemScreen);
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                ))
          ],*/
        ),
        body: Obx(
          () => SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 25,
                ),
                const InventoryPieChart(),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Center(
                    child: Text(
                      "Stock Table",
                      style: TextStyle(
                        color: Color.fromARGB(255, 15, 70, 17),
                        fontSize: 18,
                        wordSpacing: 1,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.6,
                  child: ListView(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          border: TableBorder.all(color: Colors.black),
                          headingTextStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          showCheckboxColumn: false,
                          columns: <DataColumn>[
                            //DataColumn(label: customTableCell("Function")),
                            DataColumn(label: customTableCell("Code")),
                            DataColumn(label: customTableCell("Name")),
                            DataColumn(
                                label: customTableCell("Total Quantity")),
                            DataColumn(
                                label: customTableCell("Remain Quantity")),
                            DataColumn(label: customTableCell("Price")),
                            DataColumn(label: customTableCell("Cost")),
                          ],
                          rows: [
                            for (var item in _controller.items) ...[
                              resuableDataRow(item: item),
                            ]
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                //Product Name
                /*SizedBox(
                  height: 50,
                  width: size.width * 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Product Name: "),
                      SizedBox(
                        width: 150,
                        height: 50,
                        child: TextFormField(
                          controller: _inController.nameController,
                          maxLines: 1,
                          decoration: const InputDecoration(
                              //border: InputBorder.none,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                //Price
                SizedBox(
                  height: 50,
                  width: size.width * 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Price: "),
                      SizedBox(
                        width: 150,
                        height: 50,
                        child: TextFormField(
                          controller: _inController.priceController,
                          maxLines: 1,
                          decoration: const InputDecoration(
                              //border: InputBorder.none,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                //Quantity
                SizedBox(
                  height: 50,
                  width: size.width * 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Product Name: "),
                      SizedBox(
                        width: 150,
                        height: 50,
                        child: TextFormField(
                          controller: _inController.quantityController,
                          maxLines: 1,
                          decoration: const InputDecoration(
                              //border: InputBorder.none,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //Update
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.yellow,
                          ),
                          onPressed: () => {},
                          child: const Text("Update",
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ),
                        //Delete
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          ),
                          onPressed: () => {},
                          child: const Text("Delete",
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ),
                      ],
                    )),*/
              ],
            ),
          ),
        ));
  }
}

Widget customTableCell(String text) {
  return SizedBox(
      width: 80,
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: Text(
          text,
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
        ),
      ));
}
