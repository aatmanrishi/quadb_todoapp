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
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      title: Text('Do It'),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        SizedBox(
          width: 10,
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.grid_view_sharp)),
        SizedBox(
          width: 10,
        ),
        IconButton(
            onPressed: () {
              themeManager.manageTheme();
            },
            icon: Icon(Icons.nights_stay_outlined)),
        SizedBox(width: 50)
      ],
    );
  }
}
