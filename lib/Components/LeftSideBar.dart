import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quadb_todoapp/Theme/Theme.dart';
import 'package:quadb_todoapp/Theme/ThemeManager.dart';

import 'AddListButton.dart';
import 'PieChart.dart';
import 'ProfilePicture.dart';
import 'TaskTypesContainer.dart';

class LeftSideBar extends StatelessWidget {
  const LeftSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManager = Get.find<Thememanager>();
    return SizedBox(
      // Don't set a fixed height here, let it expand
      width: 280,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfilePicture(),
  
          Container(
            width: 250,
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: themeManager.mode.value == false
                ? customLightMode["secondaryBackground"]
                : customDarkMode["secondaryBackground"],
            child: Column(
              children: [
                TaskTypeContainer(),
                AddListButton(),
                YourPieChart(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
