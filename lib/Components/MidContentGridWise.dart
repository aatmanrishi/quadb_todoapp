import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Controller/Theme/ThemeManager.dart';
import '../Controller/UiController/UiController.dart';
import 'TaskListTile.dart';

class MidContentGridWise extends StatelessWidget {
  const MidContentGridWise({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManager = Get.find<Thememanager>();
    final uiController = Get.find<Uicontroller>();

    // Get the list of tasks based on the current task index.
    List<Map<String, dynamic>> tasks = [];

    if (themeManager.taksIndex.value == 0) {
      tasks = List<Map<String, dynamic>>.from(uiController.allTask.value);
    } else if (themeManager.taksIndex.value == 1) {
      tasks = List<Map<String, dynamic>>.from(uiController.todayTask.value);
    } else if (themeManager.taksIndex.value == 2) {
      tasks = List<Map<String, dynamic>>.from(uiController.plannedTask.value);
    } else if (themeManager.taksIndex.value == 3) {
      tasks = List<Map<String, dynamic>>.from(uiController.importantTask.value);
    } else if (themeManager.taksIndex.value == 4) {
      tasks =
          List<Map<String, dynamic>>.from(uiController.assignedToMeTask.value);
    }

    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 3 columns
        crossAxisSpacing: 2, // Horizontal spacing between items
        // mainAxisSpacing: 2, // Vertical spacing between items
      ),
      itemCount: tasks.isEmpty
          ? 1
          : tasks.length, // Display 'No tasks available' if tasks are empty
      itemBuilder: (context, index) {
        // If there are no tasks, display a message
        if (tasks.isEmpty) {
          return Container(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Text(
              "No tasks available",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          );
        } else {
          // Display tasks as grid items
          final task = tasks[index];
          return Align(
            alignment: Alignment
                .topLeft, // Align items to the top left of their grid cell
            child: SizedBox(
              height: 80, // You can adjust this height if needed
              child: TaskListTile(
                name: task['name'],
                // taskNotes: task['taskNotes'],
                // taskReminder: task['taskReminder'],
                // isTaskRepeat: task['isTaskRepeat'],
                isComplete: task['isComplete'],
                currentTime: task['currentTime'],
              ),
            ),
          );
        }
      },
    );
  }
}
