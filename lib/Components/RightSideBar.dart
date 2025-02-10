import 'package:flutter/material.dart';
import 'package:quadb_todoapp/Components/RightSideContainerTile.dart';
import 'package:quadb_todoapp/Components/TaskListTile.dart';

class RightSideBar extends StatelessWidget {
  const RightSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50, top: 35),
      color: Colors.green[100],
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Divider(
            color: Colors.grey,
          ),
          TaskListTile(),
          Divider(
            color: Colors.grey,
          ),
          RightSideContainerTile(icon: Icons.add, title: "Add Steps"),
          RightSideContainerTile(icon: Icons.alarm, title: "Set Reminder"),
          RightSideContainerTile(icon: Icons.date_range, title: "Add Due Date"),
          RightSideContainerTile(icon: Icons.repeat, title: "Repeat"),
          TextField(
            maxLines: 15,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                hintText: "Add Notes",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                border: InputBorder.none),
          ),
          Divider(),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 10),
            leading: Icon(Icons.close),
            title: Text(
              'Created Today',
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
                onPressed: () {}, icon: Icon(Icons.delete_forever_outlined)),
          )
        ],
      ),
    );
  }
}
