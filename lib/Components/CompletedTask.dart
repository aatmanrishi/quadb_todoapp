import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/Theme/Theme.dart';
import '../Controller/Theme/ThemeManager.dart';
// import '../Controller/UiController/UiController.dart';
import 'TaskListTile.dart';

class CompletedTaskList extends StatelessWidget {
  const CompletedTaskList({super.key});

  Widget build(BuildContext context) {
    final themeManager = Get.find<Thememanager>();
    // final uiController = Get.find<Uicontroller>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 30, 0, 10),
          child: Text(
            "Task Completed",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: themeManager.mode.value == false
                    ? customLightMode["blackColor"]
                    : customDarkMode["white"]),
          ),
        ),
        TaskListTile(
          isCutThrough: true,
          name: "Bring Grocerry",
        ),
        TaskListTile(
          isCutThrough: true,
          name: "Complete Given Task",
        ),
        TaskListTile(
          isCutThrough: true,
          name: "Revise Maths",
        ),
        TaskListTile(
          isCutThrough: true,
          name: "Write Dart notes",
        ),
        TaskListTile(
          isCutThrough: true,
          name: "Read your Fav Book",
        ),
        // // Show all tasks
        // if (themeManager.taksIndex.value == 0)
        //   if (uiController.allTask.isEmpty)
        //     Text("No tasks available")
        //   else
        //     for (var task in uiController.allTask)
        //       TaskListTile(
        //         isCutThrough: true,
        //         name: task['name'],
        //         // taskNotes: task['taskNotes'],
        //         // taskReminder: task['taskReminder'],
        //         // isTaskRepeat: task['isTaskRepeat'],
        //         isComplete: task['isComplete'],
        //         currentTime: task['currentTime'],
        //       ),
      ],
    );
  }
}
