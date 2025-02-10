import 'package:flutter/material.dart';
import 'package:quadb_todoapp/Pages/Home.dart';
import 'package:get/get.dart';
import './Theme/ThemeManager.dart';

void main() {
  // Initialize Thememanager before the app runs
  Get.put(Thememanager());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'QuadB Tech Todo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}
