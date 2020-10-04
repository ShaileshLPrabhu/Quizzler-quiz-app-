import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:doit/Models/task.dart';

class Taskdata extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "This a Sample Content"),
    Task(name: "Press the Button below to add Tasks"),
  ];
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int getcount() {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
