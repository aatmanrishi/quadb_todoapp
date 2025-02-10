import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quadb_todoapp/Theme/Theme.dart';
import 'package:quadb_todoapp/Theme/ThemeManager.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final IconData icon;
  const TaskTile({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    final themeManager = Get.find<Thememanager>();
    return ListTile(
      leading: Icon(
        icon,
        color: themeManager.mode.value == false
            ? customLightMode["blackColor"]
            : customDarkMode["darkWhite"],
      ),
      title: Text(
        '${title}',
        style: TextStyle(
          color: themeManager.mode.value == false
              ? customLightMode["blackColor"]
              : customDarkMode["darkWhite"],
        ),
      ),
    );
  }
}
