import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quadb_todoapp/Theme/ThemeManager.dart';
import '../Theme/Theme.dart';

class AddListButton extends StatelessWidget {
  const AddListButton({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManager = Get.find<Thememanager>();
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 90,
      width: 230,
      color: themeManager.mode.value == false
          ? customLightMode["white"]
          : customDarkMode["primaryBackground"],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: themeManager.mode.value == false
                    ? customLightMode["blackColor"]
                    : customDarkMode["darkWhite"],
                size: 40,
              )),
          Text(
            'Add List',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: themeManager.mode.value == false
                  ? customLightMode["blackColor"]
                  : customDarkMode["darkWhite"],
            ),
          )
        ],
      ),
    );
  }
}
