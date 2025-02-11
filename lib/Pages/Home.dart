import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quadb_todoapp/Components/CompletedTask.dart';
import 'package:quadb_todoapp/Components/CustomAppBar.dart';
import 'package:quadb_todoapp/Components/LeftSideBar.dart';
import 'package:quadb_todoapp/Components/ListContentHeader.dart';
import 'package:quadb_todoapp/Components/MidContent.dart';
import 'package:quadb_todoapp/Components/MidContentGridWise.dart';
import 'package:quadb_todoapp/Components/TaskListTile.dart';
import 'package:quadb_todoapp/Controller/Theme/Theme.dart';
import 'package:quadb_todoapp/Controller/Theme/ThemeManager.dart';
import '../Components/RightSideBar.dart';
import '../Controller/UiController/UiController.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManager = Get.find<Thememanager>();
    final uiController = Get.find<Uicontroller>();

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
                    // Left Side Content
                    uiController.isMenu.value == true
                        ? LeftSideBar()
                        : SizedBox(),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListContentHeader(),
                            uiController.isColumn.value == true
                                ? MidContentContainerColumnWise()
                                : MidContentGridWise(),
                            // MidContentContainerColumnWise(),
                            uiController.completedTask.value.isNotEmpty
                                ? CompletedTaskList()
                                : SizedBox(),
                            CompletedTaskList(),
                          ],
                        ),
                      ),
                    ),
                    // Right Side Content
                    uiController.isRightSideContainerEnabled.value == true
                        ? Expanded(flex: 1, child: RightSideBar())
                        : SizedBox(),
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
