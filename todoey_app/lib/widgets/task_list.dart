import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';
import 'package:todoey_app/widgets/task_tiles.dart';

class TaskLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemCount: taskData.taskCount,
        itemBuilder: (context, index) {
          var task = taskData.tasks[index];
          return TaskListTile(
            isChecked: task.isDone,
            taskTitle: task.title,
            checkboxCallback: (value) {
              taskData.updateTask(task);
              /*setState(() {
                tasks[index].toggleState();
              });*/
            },
            taskDeleteCallback: (){
              taskData.deleteTask(index);
            },
          );
        },
      ),
    );
  }
}
