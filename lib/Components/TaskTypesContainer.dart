import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quadb_todoapp/Components/TaskTile.dart';
import 'package:quadb_todoapp/Theme/Theme.dart';
import 'package:quadb_todoapp/Theme/ThemeManager.dart';

class TaskTypeContainer extends StatelessWidget {
  const TaskTypeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManager = Get.find<Thememanager>();
    List<Map<String, dynamic>> listData = [
      {
        "title": "All Task",
        "icon": Icons.event_note_outlined,
      },
      {
        "title": "Today",
        "icon": Icons.today,
      },
      {
        "title": "Important",
        "icon": Icons.sticky_note_2_outlined,
      },
      {
        "title": "Assigned to me",
        "icon": Icons.accessibility_new_outlined,
      },
      {
        "title": "Planned",
        "icon": Icons.calendar_month_outlined,
      },
    ];
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      color: themeManager.mode.value == false
          ? customLightMode["white"]
          : customDarkMode["primaryBackground"],
      width: 230,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Using a loop to generate TaskTile widgets dynamically
          for (var data in listData)
            Column(
              children: [
                TaskTile(
                  title: data["title"],
                  icon: data["icon"],
                ),
              ],
            )
        ],
      ),
    );
  }
}
