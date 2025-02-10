import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quadb_todoapp/Theme/Theme.dart';

import '../Theme/ThemeManager.dart';

class ListContentHeader extends StatelessWidget {
  const ListContentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManager = Get.find<Thememanager>();
    return Container(
      color: themeManager.mode.value == false
          ? Colors.white
          : customDarkMode["secondaryBackground"],
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          // Header
          TodoHeader(),
          Divider(
            color: const Color.fromARGB(255, 193, 193, 193),
          ),
          // TextInput Field
          Container(
            width: MediaQuery.of(context).size.width,
            child: TextField(
              style: TextStyle(color: Colors.black),
              maxLines: 5,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                fillColor: Colors.transparent,
                contentPadding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                hintStyle: TextStyle(
                    color: themeManager.mode.value == false
                        ? Colors.black
                        : Colors.white),
                hintText: "Add A Task",
              ),
            ),
          ),
          // Button Area
          ButtonsRow(),
        ],
      ),
    );
  }

  TodoHeader() {
    final themeManager = Get.find<Thememanager>();
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Row(
        children: [
          Text(
            "TO Do",
            style: TextStyle(
              color: themeManager.mode.value == false
                  ? customLightMode["blackColor"]
                  : customDarkMode["white"],
            ),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: themeManager.mode.value == false
                ? customLightMode["blackColor"]
                : customDarkMode["white"],
          )
        ],
      ),
    );
  }

  // Buttons Row
  ButtonsRow() {
    final themeManager = Get.find<Thememanager>();
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none,
                  color: themeManager.mode.value == false
                      ? customLightMode["blackColor"]
                      : customDarkMode["white"],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.repeat,
                  color: themeManager.mode.value == false
                      ? customLightMode["blackColor"]
                      : customDarkMode["white"],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.event_note_sharp,
                  color: themeManager.mode.value == false
                      ? customLightMode["blackColor"]
                      : customDarkMode["white"],
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
              backgroundColor: WidgetStateProperty.all(
                  const Color.fromARGB(255, 206, 206, 206)), // Corrected
            ),
            child: Text(
              "Add Note",
              style: TextStyle(color: Colors.green), // Text color for button
            ),
          ),
        ],
      ),
    );
  }
}
