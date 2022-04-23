import 'package:cloud_firestore/cloud_firestore.dart';

class MonthlyData {
  final int totalOrder;
  final int totalRevenue;
  final int originalTotalRevenue;
  final DateTime dateTimeMonth;
  MonthlyData({
    required this.totalOrder,
    required this.totalRevenue,
    required this.originalTotalRevenue,
    required this.dateTimeMonth,
  });

  factory MonthlyData.fromJson(Map<String, dynamic> json) => MonthlyData(
        totalOrder: json["totalOrder"] as int,
        totalRevenue: json["totalRevenue"] as int,
        originalTotalRevenue: json["originalTotalRevenue"] as int,
        dateTimeMonth: (json["dateTimeMonth"] as Timestamp).toDate(),
      );

  Map<String, dynamic> toJson() => {
        "totalOrder": totalOrder,
        "totalRevenue": totalRevenue,
        "originalTotalRevenue": originalTotalRevenue,
        "dateTimeMonth": dateTimeMonth,
      };
}
