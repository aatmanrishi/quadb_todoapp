import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quadb_todoapp/Components/CustomAppBar.dart';
import 'package:quadb_todoapp/Components/LeftSideBar.dart';
import 'package:quadb_todoapp/Components/ListContentHeader.dart';
import 'package:quadb_todoapp/Components/TaskListTile.dart';
import 'package:quadb_todoapp/Theme/Theme.dart';
import 'package:quadb_todoapp/Theme/ThemeManager.dart';

import '../Components/RightSideBar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManager = Get.find<Thememanager>();
    return Obx(() {
      return Scaffold(
        backgroundColor: themeManager.mode.value == false
            ? customLightMode["primaryBackground"]
            : customDarkMode["primaryBackground"],
        body: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(20, 0, 30, 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Customappbar(),
                SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Center content
                    LeftSideBar(),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: [
                            ListContentHeader(),
                            TaskListTile(),
                            TaskListTile(),
                            TaskListTile(),
                            TaskListTile(),
                            TaskListTile(),
                            TaskListTile(),
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: RightSideBar())
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
