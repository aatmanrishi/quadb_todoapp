import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quadb_todoapp/Components/TaskTile.dart';
import 'package:quadb_todoapp/Controller/Theme/Theme.dart';
import 'package:quadb_todoapp/Controller/Theme/ThemeManager.dart';

class TaskTypeContainer extends StatelessWidget {
  const TaskTypeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManager = Get.find<Thememanager>();
    List<Map<String, dynamic>> listData = [
      {
        "index": 0,
        "title": "All Task",
        "icon": Icons.event_note_outlined,
      },
      {
        "index":1,
        "title": "Today",
        "icon": Icons.today,
      },
      {
        "index":2,
        "title": "Important",
        "icon": Icons.sticky_note_2_outlined,
      },
      {  "index":3,
        "title": "Assigned to me",
        "icon": Icons.accessibility_new_outlined,
      },
      {
        "index":4,
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
                  index:data["index"],
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
