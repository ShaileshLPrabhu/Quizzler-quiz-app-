import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool ischecked;
  final String Taskname;
  final Function checkboxcallback;
  final Function longpresscallback;

  TaskTile({
    this.ischecked,
    this.Taskname,
    this.checkboxcallback,
    this.longpresscallback,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpresscallback,
      title: Text(
        Taskname,
        style: TextStyle(
            decoration: ischecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: ischecked,
        onChanged: checkboxcallback,
      ),
    );
  }
}
