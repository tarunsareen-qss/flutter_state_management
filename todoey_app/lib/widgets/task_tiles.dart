import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function taskDeleteCallback;

  const TaskListTile({Key key, this.isChecked, this.taskTitle, this.checkboxCallback, this.taskDeleteCallback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: taskDeleteCallback,
      title:  Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
/*(value) {
          setState(() {
            isChecked = value;
          });*/

