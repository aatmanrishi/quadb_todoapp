import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quadb_todoapp/Theme/ThemeManager.dart';

import '../Theme/Theme.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManager = Get.find<Thememanager>();
    return Container(
      height: 170, // Container height
      width: 250, // Container width // Container background color
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              child: Container(
                // padding: EdgeInsets.all(10),
                color: themeManager.mode.value == false
                    ? customLightMode["secondaryBackground"]
                    : customDarkMode["secondaryBackground"],
                width: MediaQuery.of(context).size.width,
                height: 100,
              )),
          Positioned(
            left: 50,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/OIP.OwNfXHWEAynGbQwhmUNQWwHaKk?rs=1&pid=ImgDetMain'), // Circle background color
              radius: 80, // Circle radius
            ),
          ),
        ],
      ),
    );
  }
}
