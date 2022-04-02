import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/model/task_data.dart';
import 'package:flutter_to_do_list/screen/add_task_screen.dart';
import 'package:provider/provider.dart';

import '../widget/task_list.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) =>
                  SingleChildScrollView(child: AddTaskScreen()));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 60.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30.0,
                      child: Icon(
                        Icons.list,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Todoey",
                      style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "${Provider.of<TaskData>(context).taskcount} task",
                      style: TextStyle(color: Colors.white),
                    ),
                  ]),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 60.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),
                ),
                child: TaskList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
