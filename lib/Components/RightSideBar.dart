import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quadb_todoapp/Components/RightSideContainerTile.dart';
import 'package:quadb_todoapp/Components/TaskListTile.dart';
import 'package:quadb_todoapp/Controller/Theme/ThemeManager.dart';

import '../Controller/Theme/Theme.dart';
import '../Controller/UiController/UiController.dart';

class RightSideBar extends StatelessWidget {
  const RightSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManager = Get.find<Thememanager>();
    final uiController = Get.find<Uicontroller>();
    return Container(
      padding: EdgeInsets.only(left: 50, top: 35),
      color: themeManager.mode.value == false
          ? customLightMode["secondaryBackground"]
          : customDarkMode["secondaryDarkMode"],
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Divider(
            color: Colors.grey,
          ),
          TaskListTile(),
          Divider(
            color: Colors.grey,
          ),
          RightSideContainerTile(icon: Icons.add, title: "Add Steps"),
          RightSideContainerTile(icon: Icons.alarm, title: "Set Reminder"),
          RightSideContainerTile(icon: Icons.date_range, title: "Add Due Date"),
          RightSideContainerTile(icon: Icons.repeat, title: "Repeat"),
          TextField(
            maxLines: 15,
            style: TextStyle(
              color: themeManager.mode.value == false
                  ? customLightMode["darkColor"]
                  : customDarkMode["white"],
            ),
            cursorColor: themeManager.mode.value == false
                ? customLightMode["darkColor"]
                : customDarkMode["white"],
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                hintText: "Add Notes",
                hintStyle: TextStyle(
                  color: themeManager.mode.value == false
                      ? customLightMode["darkColor"]
                      : customDarkMode["white"],
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                border: InputBorder.none),
          ),
          Divider(),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 10),
            leading: IconButton(
              onPressed: () {
                uiController.isRightSideContainerEnabled.value = false;
              },
              icon: Icon(
                Icons.close,
                color: themeManager.mode.value == false
                    ? customLightMode["blackColor"]
                    : customDarkMode["white"],
              ),
            ),
            title: Text(
              'Created Today',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: themeManager.mode.value == false
                    ? customLightMode["blackColor"]
                    : customDarkMode["white"],
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete_forever_outlined,
                  color: themeManager.mode.value == false
                      ? customLightMode["blackColor"]
                      : customDarkMode["white"],
                )),
          ),
          Divider(
            color: themeManager.mode.value == false
                ? customLightMode["blackColor"]
                : customDarkMode["white"],
          )
        ],
      ),
    );
  }
}
