import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quadb_todoapp/Controller/Theme/Theme.dart';
import 'package:quadb_todoapp/Controller/Theme/ThemeManager.dart';

class TaskTile extends StatelessWidget {
  final int index;
  final String title;
  final IconData icon;
  const TaskTile(
      {super.key,
      required this.title,
      required this.icon,
      required this.index});

  @override
  Widget build(BuildContext context) {
    final themeManager = Get.find<Thememanager>();
    return Obx(() {
      return ListTile(
        tileColor: themeManager.taksIndex.value == index
            ? customLightMode["primaryBackground"]
            : null,
        onTap: () {
          themeManager.selectTask(index);
        },
        leading: Icon(
          icon,
          color: themeManager.taksIndex.value == index
              ? Colors.green
              : themeManager.mode.value == false
                  ? customLightMode["blackColor"]
                  : customDarkMode["darkWhite"],
        ),
        title: Text(
          '${title}',
          style: TextStyle(
            color: themeManager.taksIndex.value == index
                ? Colors.green
                : themeManager.mode.value == false
                    ? customLightMode["blackColor"]
                    : themeManager.mode.value == false
                        ? customLightMode["blackColor"]
                        : customDarkMode["darkWhite"],
          ),
        ),
      );
    });
  }
}
