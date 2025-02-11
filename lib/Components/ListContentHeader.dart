import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:quadb_todoapp/Controller/Theme/Theme.dart';
import 'package:quadb_todoapp/Controller/UiController/UiController.dart';

import '../Controller/Theme/ThemeManager.dart';

class ListContentHeader extends StatelessWidget {
  const ListContentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManager = Get.find<Thememanager>();
    final uiController = Get.find<Uicontroller>();
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
              onTap: () {
                // if user click on it then enable right Sidebar to appear.....
                if (uiController.isRightSideContainerEnabled.value == false) {
                  uiController.isRightSideContainerEnabled.value = true;
                }
              },
              controller: uiController.textController.value,
              style: TextStyle(
                color: themeManager.mode.value == false
                    ? customLightMode["darkColor"]
                    : customDarkMode["white"],
              ),
              maxLines: 5,
              cursorColor: themeManager.mode.value == false
                  ? customLightMode["darkColor"]
                  : customDarkMode["white"],
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
    final uiController = Get.find<Uicontroller>();
    final textController = TextEditingController();
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
            onPressed: () {
              print(uiController.textController.value.text);

              // Check if the text field is not empty
              if (uiController.textController.value.text.isNotEmpty) {
                // Call the addContentTask method with the text
                uiController.addContentTask(
                    index: themeManager.taksIndex.value,
                    name: uiController.textController.value.text);
                uiController.textController.value.clear();
                // uiController.isRightSideContainerEnabled.value = false;
              } else {
                // Show a toast message if the text field is empty
                Fluttertoast.showToast(
                  msg: "Please enter a task", // Improved message
                  gravity: ToastGravity.TOP,
                  webPosition: "center",
                  timeInSecForIosWeb: 1,
                  webBgColor: "white",
                  backgroundColor: Colors.white,
                  textColor: Colors.green,
                  fontSize: 20.0,
                );
              }
            },
            style: ButtonStyle(
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              ),
              backgroundColor: themeManager.mode.value == false
                  ? WidgetStatePropertyAll(
                      const Color.fromARGB(255, 206, 206, 206),
                    )
                  : WidgetStatePropertyAll(customDarkMode["white"]),
            ),
            child: Text(
              "Add Note",
              style: TextStyle(
                color: themeManager.mode.value == false
                    ? Colors.green
                    : customDarkMode["blackColor"],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
