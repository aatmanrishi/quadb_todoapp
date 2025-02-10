import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quadb_todoapp/Theme/Theme.dart';
import 'package:quadb_todoapp/Theme/ThemeManager.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManager = Get.find<Thememanager>();
    return AppBar(
      backgroundColor: themeManager.mode.value == false
          ? customLightMode["primaryBackground"]
          : customDarkMode["primaryBackground"],
      leading: IconButton(
          onPressed: () {},
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
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.grid_view_sharp,
              color: themeManager.mode.value == false
                  ? customLightMode["blackColor"]
                  : customDarkMode["white"],
            )),
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
