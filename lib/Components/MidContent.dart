import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quadb_todoapp/Components/TaskListTile.dart';

import '../Controller/Theme/Theme.dart';
import '../Controller/Theme/ThemeManager.dart';
import '../Controller/UiController/UiController.dart';

class MidContentContainerColumnWise extends StatelessWidget {
  const MidContentContainerColumnWise({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManager = Get.find<Thememanager>();
    final uiController = Get.find<Uicontroller>();

    return Obx(() {
      return Column(
        children: [
          // Show all tasks
          if (themeManager.taksIndex.value == 0)
            if (uiController.allTask.isEmpty)
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Text(
                  "No tasks available",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: themeManager.mode.value == false
                          ? customLightMode["darkColor"]
                          : customDarkMode["white"],
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              )
            else
              ...uiController.allTask
                  .map((task) => TaskListTile(
                        
                        name: task['name'],
                        // taskNotes: task['taskNotes'],
                        // taskReminder: task['taskReminder'],
                        // isTaskRepeat: task['isTaskRepeat'],
                        isComplete: task['isComplete'],
                        currentTime: task['currentTime'],
                      ))
                  .toList(),

          // Show today's tasks
          if (themeManager.taksIndex.value == 1)
            if (uiController.todayTask.isEmpty)
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Text(
                  "No tasks available",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: themeManager.mode.value == false
                          ? customLightMode["darkColor"]
                          : customDarkMode["white"],
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              )
            else
              ...uiController.todayTask
                  .map((task) => TaskListTile(
                        name: task['name'],
                        // taskNotes: task['taskNotes'],
                        // taskReminder: task['taskReminder'],
                        // isTaskRepeat: task['isTaskRepeat'],
                        isComplete: task['isComplete'],
                        currentTime: task['currentTime'],
                      ))
                  .toList(),

          // Show planned tasks
          if (themeManager.taksIndex.value == 2)
            if (uiController.plannedTask.isEmpty)
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Text(
                  "No tasks available",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: themeManager.mode.value == false
                          ? customLightMode["darkColor"]
                          : customDarkMode["white"],
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              )
            else
              ...uiController.plannedTask
                  .map((task) => TaskListTile(
                        name: task['name'],
                        // taskNotes: task['taskNotes'],
                        // taskReminder: task['taskReminder'],
                        // isTaskRepeat: task['isTaskRepeat'],
                        isComplete: task['isComplete'],
                        currentTime: task['currentTime'],
                      ))
                  .toList(),

          // Show important tasks
          if (themeManager.taksIndex.value == 3)
            if (uiController.importantTask.isEmpty)
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Text(
                  "No tasks available",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: themeManager.mode.value == false
                          ? customLightMode["darkColor"]
                          : customDarkMode["white"],
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              )
            else
              ...uiController.importantTask
                  .map((task) => TaskListTile(
                        name: task['name'],
                        // taskNotes: task['taskNotes'],
                        // taskReminder: task['taskReminder'],
                        // isTaskRepeat: task['isTaskRepeat'],
                        isComplete: task['isComplete'],
                        currentTime: task['currentTime'],
                      ))
                  .toList(),

          // Show assigned tasks
          if (themeManager.taksIndex.value == 4)
            if (uiController.assignedToMeTask.isEmpty)
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Text(
                  "No tasks available",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: themeManager.mode.value == false
                          ? customLightMode["darkColor"]
                          : customDarkMode["white"],
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              )
            else
              ...uiController.assignedToMeTask
                  .map((task) => TaskListTile(
                        name: task['name'],
                        // taskNotes: task['taskNotes'],
                        // taskReminder: task['taskReminder'],
                        // isTaskRepeat: task['isTaskRepeat'],
                        isComplete: task['isComplete'],
                        currentTime: task['currentTime'],
                      ))
                  .toList(),
        ],
      );
    });
  }
}
