import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quadb_todoapp/Controller/Theme/Theme.dart';
import 'package:quadb_todoapp/Controller/Theme/ThemeManager.dart';

class YourPieChart extends StatelessWidget {
  const YourPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManager = Get.find<Thememanager>();
    return Container(
      color: themeManager.mode.value == false
          ? customLightMode["white"]
          : customDarkMode["primaryBackground"],
      // height: 500,
      width: 230,
      child: Column(
        children: [
          PieChartTileContainer(),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 300,
            child: myPieChart(),
          )
        ],
      ),
    );
  }

  myPieChart() {
    return PieChart(PieChartData(sections: [
      PieChartSectionData(
        value: 30,
        showTitle: false,
        radius: 40,
        color: const Color.fromARGB(255, 97, 251, 176),
      ),
      PieChartSectionData(
          value: 70, showTitle: false, radius: 40, color: Colors.green[900])
    ]));
  }

  PieChartTileContainer() {
    final themeManager = Get.find<Thememanager>();
    return Container(
      color: themeManager.mode.value == false
          ? customLightMode["white"]
          : customDarkMode["primaryBackground"],
      padding: EdgeInsets.all(10),
      width: 250,
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Today Task",
                style: TextStyle(
                  color: themeManager.mode.value == false
                      ? customLightMode["blackColor"]
                      : customDarkMode["white"],
                ),
              ),
              CircleAvatar(
                backgroundColor: themeManager.mode.value == false
                    ? customLightMode["primaryBackground"]
                    : customDarkMode["secondaryBackground"],
                radius: 10,
                child: Text(
                  "i",
                  style: TextStyle(
                    fontSize: 20,
                    color: themeManager.mode.value == false
                        ? customLightMode["blackColor"]
                        : customDarkMode["white"],
                  ),
                ),
              )
            ],
          ),
          Text(
            "11",
            style: TextStyle(
                color: themeManager.mode.value == false
                    ? customLightMode["blackColor"]
                    : customDarkMode["white"],
                fontSize: 22),
          )
        ],
      ),
    );
  }
}
