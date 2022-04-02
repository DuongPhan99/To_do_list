import 'package:flutter/material.dart';

import 'package:flutter_to_do_list/model/task_data.dart';
import 'package:flutter_to_do_list/widget/task_title.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
            itemCount: taskdata.taskcount,
            itemBuilder: (context, index) {
              final task = taskdata.tasks[index];
              return TaskTitle(
                taskTitle: task.name,
                checkbox: task.isdone,
                checkBoxCallBack: (checkboxstate) {
                  taskdata.updatetask(task);
                },
                longpresscallback: () {
                  taskdata.deletetask(task);
                },
              );
            });
      },
    );
  }
}
