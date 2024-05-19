import 'package:flutter/material.dart';
import 'package:my_task_app/models/task_model.dart';

class TaskProvider with ChangeNotifier {
  List<Task>? myTasks = [
    Task(name: 'Estudar Flutter', dateTime: DateTime.now(), location: null),
    Task(name: 'Estudar C#', dateTime: DateTime.now(), location: null),
    Task(name: 'Estudar JavaScript', dateTime: DateTime.now(), location: null),
  ];

  void add(Task task) {
    myTasks?.add(task);
    notifyListeners();
  }

  void update(int index, Task task) {
    myTasks?[index] = task;
    notifyListeners();
  }

  void delete(Task task) {

    int index = myTasks!.indexWhere((element) => element.name == task.name);

    if(index != -1)
    {
      myTasks?.removeAt(index);
      notifyListeners();
    }
  }
}
