
import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_app/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(title: "Task 1"),
    Task(title: "Task 2"),
    Task(title: "Task 3"),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);
  int get taskCount => _tasks.length;

  void updateTask(Task task){
    task.toggleState();
    notifyListeners();
  }
  void addNewTask(String title){
    _tasks.add(Task(title: title));
    notifyListeners();
  }

  void deleteTask(int index){
    _tasks.removeAt(index);
    notifyListeners();
  }
}