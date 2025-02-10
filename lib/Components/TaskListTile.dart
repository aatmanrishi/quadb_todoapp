import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quadb_todoapp/Theme/Theme.dart';
import 'package:quadb_todoapp/Theme/ThemeManager.dart';

class TaskListTile extends StatelessWidget {
  const TaskListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManager = Get.find<Thememanager>();
    return Container(
      height: 80,
      padding: EdgeInsets.all(1),
      child: CheckboxListTile(
        contentPadding:
            EdgeInsets.only(top: 10, left: 30, bottom: 10, right: 40),
        tileColor: themeManager.mode.value == false
            ? customLightMode["white"]
            : customDarkMode["secondaryBackground"],
        value: false,
        
        title: Text(
          "Grocerry",
          style: TextStyle(
            color: themeManager.mode.value == false
                ? customLightMode["blackColor"]
                : customDarkMode["white"],
          ),
        ),
        onChanged: (bool? value) {},
        secondary: Icon(
          Icons.star_border,
          color: themeManager.mode.value == false
              ? customLightMode["blackColor"]
              : customDarkMode["white"],
        ),
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }
}
