import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fl_chart/fl_chart.dart';

class MonthlyConsumptionView extends StatelessWidget {
  const MonthlyConsumptionView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xffEEF4FA),
      appBar: AppBar (
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        centerTitle: true,
        title: const Text(
          "Monthly consumption",
          style: TextStyle(color: Colors.black),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(20.w),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Top Cards
            Row(
              children: [
                Expanded(child: statCard(
                  icon: Icons.check,
                  title: "Order\nCompleted",
                  value: "18",
                )),
                SizedBox(width: 15.w),
                Expanded(child: statCard(
                  icon: Icons.gas_meter,
                  title: "Cylinder\nconsume",
                  value: "4",
                  sub: "cylinder",
                )),
              ],
            ),

            SizedBox(height: 20.h),

            Text(
              "Gas consumed per month",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
              ),
            ),

            SizedBox(height: 15.h),

            /// Month Year Toggle
            Container(
              height: 40.h,
              decoration: BoxDecoration(
                color: const Color(0xff1E88E5),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                children: [

                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.lightBlue.shade100,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: const Center(
                        child: Text("Month"),
                      ),
                    ),
                  ),

                  const Expanded(
                    child: Center(
                      child: Text(
                        "Year",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 20.h),

            /// Chart
            Container(
              height: 260.h,
              padding: EdgeInsets.all(15.w),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue.shade200.withOpacity(.4),
                    Colors.blue.shade100.withOpacity(.2),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: LineChart(
                LineChartData(

                  minY: 0,
                  maxY: 50,

                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: false,
                    horizontalInterval: 10,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: Colors.grey.withOpacity(.2),
                        strokeWidth: 1,
                      );
                    },
                  ),

                  titlesData: FlTitlesData(

                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: 10,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            "${value.toInt()} kg",
                            style: TextStyle(
                              fontSize: 10.sp,
                              color: Colors.grey,
                            ),
                          );
                        },
                      ),
                    ),

                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {

                          const months = [
                            "Jan","Feb","Mar","Apr","May"
                          ];

                          if (value.toInt() < months.length) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text(
                                months[value.toInt()],
                                style: TextStyle(fontSize: 12.sp),
                              ),
                            );
                          }

                          return const SizedBox();
                        },
                      ),
                    ),

                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),

                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),

                  borderData: FlBorderData(show: false),

                  lineBarsData: [

                    LineChartBarData(
                      isCurved: true,
                      barWidth: 4,
                      color: const Color(0xff1E88E5),

                      spots: const [
                        FlSpot(0, 10),
                        FlSpot(1, 22),
                        FlSpot(2, 33),
                        FlSpot(3, 18),
                        FlSpot(4, 28),
                      ],

                      dotData: FlDotData(
                        show: true,
                        getDotPainter: (spot, percent, bar, index) {
                          return FlDotCirclePainter(
                            radius: 5,
                            color: Colors.white,
                            strokeWidth: 3,
                            strokeColor: const Color(0xff1E88E5),
                          );
                        },
                      ),

                      belowBarData: BarAreaData(
                        show: true,
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xff1E88E5).withOpacity(.4),
                            const Color(0xff1E88E5).withOpacity(.05),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ],

                  extraLinesData: ExtraLinesData(
                    verticalLines: [
                      VerticalLine(
                        x: 2,
                        color: Colors.blue.withOpacity(.2),
                        strokeWidth: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Card Widget
  Widget statCard({
    required IconData icon,
    required String title,
    required String value,
    String? sub,
  }) {
    return Container(
      padding: EdgeInsets.all(15.w),
      decoration: BoxDecoration(
        color: const Color(0xffD9E7F4),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            padding: EdgeInsets.all(6.w),
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.white, size: 18.sp),
          ),

          SizedBox(height: 10.h),

          Text(
            title,
            style: TextStyle(fontSize: 12.sp),
          ),

          SizedBox(height: 5.h),

          Row(
            children: [
              Text(
                value,
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (sub != null)
                Text(" $sub"),
            ],
          )
        ],
      ),
    );
  }
}