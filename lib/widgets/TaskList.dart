import 'package:doit/Models/task.dart';
import 'package:doit/Models/taskdata.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'TaskTile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Taskdata>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = Provider.of<Taskdata>(context).tasks[index];
            return TaskTile(
              Taskname: Provider.of<Taskdata>(context).tasks[index].name,
              ischecked: Provider.of<Taskdata>(context).tasks[index].isDone,
              checkboxcallback: (bool checkBoxstate) {
                taskdata.updateTask(task);
              },
              longpresscallback: () {
                taskdata.deleteTask(task);
              },
            );
          },
          itemCount: taskdata.getcount(),
        );
      },
    );
  }
}
