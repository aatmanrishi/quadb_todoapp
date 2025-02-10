import 'package:flutter/material.dart';

class RightSideContainerTile extends StatelessWidget {
  final IconData icon;
  final String title;
  const RightSideContainerTile(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Center(
        child: ListTile(
          leading: Icon(icon),
          title: Text("$title"),
        ),
      ),
    );
  }
}
