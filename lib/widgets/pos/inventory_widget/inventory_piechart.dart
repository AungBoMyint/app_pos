import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_and_ecommerce/controller/home_controller.dart';

import 'indicator.dart';

class InventoryPieChart extends StatelessWidget {
  const InventoryPieChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 4,
      child: Row(
        children: <Widget>[
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 16 / 4,
              child: PieChart(
                PieChartData(
                    pieTouchData: PieTouchData(
                        touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      if (!event.isInterestedForInteractions ||
                          pieTouchResponse == null ||
                          pieTouchResponse.touchedSection == null) {
                        // _inController.pieTouchIndex = -1;
                        return;
                      }
                      // _inController.pieTouchIndex =
                      pieTouchResponse.touchedSection!.touchedSectionIndex;
                    }),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    sectionsSpace: 0,
                    centerSpaceRadius: 10,
                    sections: showingSections()),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Indicator(
                color: Color(0xff0293ee),
                text: 'Total Products',
                isSquare: true,
              ),
              SizedBox(
                height: 10,
              ),
              Indicator(
                color: Color(0xff13d38e),
                text: 'Remain Products',
                isSquare: true,
              ),
              SizedBox(
                height: 18,
              ),
            ],
          ),
          const SizedBox(
            width: 28,
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    HomeController _controller = Get.find();
    return List.generate(2, (i) {
      final isTouched = i == _controller.pieTouchIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: _controller.totalProduct.value + .0,
            title: '${_controller.totalProduct.value}',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xff13d38e),
            value: _controller.remainProduct.value + .0,
            title: '${_controller.remainProduct.value}',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        default:
          throw Error();
      }
    });
  }
}
