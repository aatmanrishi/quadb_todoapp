import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quadb_todoapp/Controller/Theme/ThemeManager.dart';
import 'package:quadb_todoapp/Controller/UiController/UiController.dart';
import '../Controller/Theme/Theme.dart';

class TaskListTile extends StatelessWidget {
  final String? name;
  // final String? taskNotes;
  // final String? taskReminder;
  // final String? isTaskRepeat;
  final bool? isComplete;
  final String? currentTime;

  final bool? isCutThrough; // A flag to check if text should have strikethrough

  // Constructor to accept task parameters, with default values.
  const TaskListTile({
    this.isCutThrough, // Check this to apply strikethrough
    Key? key,
    this.name,
    // this.taskNotes,
    // this.taskReminder,
    // this.isTaskRepeat,
    this.isComplete = false, // Default value for isComplete
    this.currentTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeManager = Get.find<Thememanager>();
    final uiController = Get.find<Uicontroller>();
    return Container(
      height: 80,
      padding: EdgeInsets.all(2),
      child: CheckboxListTile(
        contentPadding:
            EdgeInsets.only(top: 10, left: 30, bottom: 0, right: 40),
        tileColor: themeManager.mode.value == false
            ? customLightMode["white"]
            : customDarkMode["secondaryBackground"],
        value: false,
        onChanged: (bool? value) {
          // Trigger a function that will turn is Complete true
          int index = themeManager.taksIndex.value;
          // Function is Being Called
          uiController.IsCompleted("${currentTime}", index);
        },
        title: Text(
          name ?? "Unnamed Task", // Default text if name is null
          style: TextStyle(
            color: themeManager.mode.value == false
                ? customLightMode["blackColor"]
                : customDarkMode["white"],
            decoration: (isCutThrough == true)
                ? TextDecoration
                    .lineThrough // Apply strikethrough if `isCutThrough` is true
                : null,
          ),
        ),
        secondary: Icon(
          Icons.star_border,
          color: themeManager.mode.value == false
              ? customLightMode["blackColor"]
              : customDarkMode["white"],
        ),
      ),
    );
  }
}
