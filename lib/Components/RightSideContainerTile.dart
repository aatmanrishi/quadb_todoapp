import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quadb_todoapp/Theme/ThemeManager.dart';

import '../Theme/Theme.dart';

class RightSideContainerTile extends StatelessWidget {
  final IconData icon;
  final String title;
  const RightSideContainerTile(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    final themeManager = Get.find<Thememanager>();
    return Container(
      height: 70,
      decoration: BoxDecoration(
          color: themeManager.mode.value == false
              ? customLightMode["secondaryBackground"]
              : customDarkMode["secondaryDarkMode"],
          border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Center(
        child: ListTile(
          leading: Icon(
            icon,
            color: themeManager.mode.value == false
                ? customLightMode["blackColor"]
                : customDarkMode["white"],
          ),
          title: Text("$title",
              style: TextStyle(
                color: themeManager.mode.value == false
                    ? customLightMode["blackColor"]
                    : customDarkMode["white"],
              )),
        ),
      ),
    );
  }
}
