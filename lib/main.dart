import 'package:doit/Models/taskdata.dart';
import 'package:doit/Screens/task_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Taskdata(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
