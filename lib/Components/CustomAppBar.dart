import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quadb_todoapp/Controller/Theme/Theme.dart';
import 'package:quadb_todoapp/Controller/Theme/ThemeManager.dart';
import 'package:quadb_todoapp/Controller/UiController/UiController.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManager = Get.find<Thememanager>();
    final uiController = Get.find<Uicontroller>();
    return AppBar(
      backgroundColor: themeManager.mode.value == false
          ? customLightMode["primaryBackground"]
          : customDarkMode["primaryBackground"],
      leading: IconButton(
          onPressed: () {
            uiController.isMenu.value == true
                ? uiController.isMenu.value = false
                : uiController.isMenu.value = true;
          },
          icon: Icon(
            Icons.menu,
            color: themeManager.mode.value == false
                ? customLightMode["blackColor"]
                : customDarkMode["white"],
          )),
      title: Text(
        'Do It',
        style: TextStyle(
            color: themeManager.mode.value == false
                ? customLightMode["blackColor"]
                : customDarkMode["white"]),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: themeManager.mode.value == false
                  ? customLightMode["blackColor"]
                  : customDarkMode["white"],
            )),
        SizedBox(
          width: 10,
        ),
        Obx(() {
          return uiController.isColumn.value == true
              ? IconButton(
                  onPressed: () {
                    if (uiController.allTask.value.isEmpty ||
                        uiController.importantTask.value.isEmpty ||
                        uiController.plannedTask.value.isEmpty ||
                        uiController.todayTask.value.isEmpty ||
                        uiController.assignedToMeTask.value.isEmpty) {
                    } else {
                      uiController.isColumn.value == true
                          ? uiController.isColumn.value = false
                          : uiController.isColumn.value = true;
                    }
                  },
                  icon: Icon(
                    Icons.grid_view_sharp,
                    color: themeManager.mode.value == false
                        ? customLightMode["blackColor"]
                        : customDarkMode["white"],
                  ))
              : IconButton(
                  onPressed: () {
                    uiController.isColumn.value == true
                        ? uiController.isColumn.value = false
                        : uiController.isColumn.value = true;
                  },
                  icon: Icon(
                    Icons.density_medium_rounded,
                    color: themeManager.mode.value == false
                        ? customLightMode["blackColor"]
                        : customDarkMode["white"],
                  ));
        }),
        SizedBox(
          width: 10,
        ),
        IconButton(
            onPressed: () {
              themeManager.manageTheme();
            },
            icon: themeManager.mode.value == false
                ? Icon(Icons.nights_stay_outlined)
                : Icon(
                    Icons.sunny,
                    color: Colors.white,
                  )),
        SizedBox(width: 50)
      ],
    );
  }
}
