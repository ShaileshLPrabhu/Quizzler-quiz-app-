import 'package:doit/Models/taskdata.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTaskscreen extends StatelessWidget {
  String newTaskname;
  bool _validate = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: SingleChildScrollView(
        child: Container(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              )),
          child: Column(
            children: <Widget>[
              Text(
                "Add Task",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newvalue) {
                  newTaskname = newvalue;
                  decoration:
                  InputDecoration(
                    errorText: _validate ? 'Value Can\'t Be Empty' : null,
                  );
                },
              ),
              FlatButton(
                onPressed: () {
                  Provider.of<Taskdata>(context, listen: false)
                      .addTask(newTaskname);
                  Navigator.pop(context);
                },
                child: Text("Add"),
                color: Colors.lightBlue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
