import 'package:flutter/material.dart';
import 'package:my_task_app/components/task_list_Tile.dart';
import 'package:my_task_app/models/task_model.dart';
import 'package:my_task_app/providers/task_provider.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    final taskProvider = context.watch<TaskProvider>();
    final List<Task>?  myTasks = taskProvider.myTasks;

    return ListView.builder(
      itemCount: myTasks?.length,
      itemBuilder: (context, index) {
        Task task = myTasks![index];
        return TaskListTile(task);
      },
    );
  }
}
