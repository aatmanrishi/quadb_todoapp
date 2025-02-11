import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quadb_todoapp/Controller/Theme/ThemeManager.dart';

final themeManager = Get.find<Thememanager>();

class Uicontroller extends GetxController {
  Rx<TextEditingController> textController = TextEditingController().obs;
  // Rx<TextEditingController> taskNotes = TextEditingController().obs;
  // Rx<TextEditingController> taskReminder = TextEditingController().obs;
  // Rx<TextEditingController> dateChoose = TextEditingController().obs;
  RxBool isComplete = false.obs;
  Rx<TextEditingController> choooseDate = TextEditingController().obs;

  RxList allTask = [].obs;
  RxList todayTask = [].obs;
  RxList plannedTask = [].obs;
  RxList importantTask = [].obs;
  RxList assignedToMeTask = [].obs;
  RxList completedTask = [].obs;
  RxBool isRightSideContainerEnabled = false.obs;
  RxBool isColumn = true.obs;
  RxBool isMenu = true.obs;
  RxBool isChecked = false.obs;
// Used for adding notes
  void addContentTask({
    required int index,
    String? name,
  }) {
    var typeIndex = index;

    var task = {
      "name": textController.value.text ?? "Unnamed Task",
      // "taskNotes": "${taskNotes.value.text}",
      // "taskReminder": "${taskReminder.value.text}",
      // "dateChoose": "${dateChoose.value.text}",
      // "isRepeat": "",
      "isComplete": false,
      "currentTime": "${DateTime.now().toString()}",
    };

    // Add task to appropriate list based on typeIndex

    if (typeIndex == 0) {
      allTask.add(task);
      print("Note added Succesfully....😊");
    } else if (typeIndex == 1) {
      todayTask.add(task);
    } else if (typeIndex == 2) {
      plannedTask.add(task);
    } else if (typeIndex == 3) {
      importantTask.add(task);
    } else if (typeIndex == 4) {
      assignedToMeTask.add(task);
    }

    // taskNotes.value.clear();
    // taskReminder.value.clear();
    // dateChoose.value.clear();

    print("Item Added Successfully");
  }

// User for adding check for completing task
  void IsCompleted(String currentTime, int index) {
    int typeIndex = index;
    print("INDEX - $typeIndex");
    if (typeIndex == 0) {
      for (int i = 0; i < allTask.value.length; i++) {
        print(allTask[i].value);
      }
    }
  }

// Delete Task
  void delteTask(String currentTime, int index) {
    var typeIndex = index;
    // Check the typeIndex and delete the task from the appropriate list
    if (typeIndex == 0) {
      // Find and remove the task with matching currentTime from allTask
      allTask.removeWhere((task) => task['currentTime'] == currentTime);
    } else if (typeIndex == 1) {
      // Implement deletion logic for todayTask
      todayTask.removeWhere((task) => task['currentTime'] == currentTime);
    } else if (typeIndex == 2) {
      // Implement deletion logic for plannedTask
      plannedTask.removeWhere((task) => task['currentTime'] == currentTime);
    } else if (typeIndex == 3) {
      // Implement deletion logic for importantTask
      importantTask.removeWhere((task) => task['currentTime'] == currentTime);
    } else if (typeIndex == 4) {
      // Implement deletion logic for assignedToMeTask
      assignedToMeTask
          .removeWhere((task) => task['currentTime'] == currentTime);
    }
  }
}
