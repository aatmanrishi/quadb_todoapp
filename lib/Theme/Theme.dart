import 'package:flutter/material.dart';



// Defining common colors to avoid redundancy
final Map<String, Color> customLightMode = {
  "primaryBackground": Colors.green[50]!,
  "white": Colors.white,
  "secondaryBackground": Colors.green[100]!,
  "blackColor": Colors.black,
  "grayColor": Color.fromARGB(255, 193, 193, 193),
  "darkGrayColor": Color.fromARGB(255, 206, 206, 206),
  "dividerColor": Colors.grey,
  "pieCharIBackgroundColor": Colors.black,
};
final Map<String, Color> customDarkMode = {
  "primaryBackground": Color(0xFF242424),
   "blackColor": Colors.black, // Replacing light green with dark color
  "secondaryBackground":
      Color(0xFF2C2C2C), // Replacing green[100] with darker color
  "darkWhite":
      Colors.white, // Replacing white with white for text and containers
  "white": Colors.white, // Replacing gray with white for contrast
  "dividerColor": Colors.white, // White dividers for dark theme
  "pieCharIBackgroundColor":
      const Color.fromARGB(255, 71, 71, 71), // Keeping it white for visibility
};
