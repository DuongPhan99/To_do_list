import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  final bool checkbox;
  final String taskTitle;
  final Function checkBoxCallBack;
  final Function longpresscallback;
  TaskTitle(
      {this.checkbox,
      this.taskTitle,
      this.checkBoxCallBack,
      this.longpresscallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: longpresscallback,
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration:
                  checkbox ? TextDecoration.lineThrough : TextDecoration.none),
        ),
        trailing: Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: checkbox,
            onChanged: checkBoxCallBack));
  }
}
