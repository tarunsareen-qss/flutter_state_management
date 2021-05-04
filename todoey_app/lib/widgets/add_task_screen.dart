import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task.dart';
import 'package:todoey_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final controller = TextEditingController();
 /* final Function onAddClicked;

  AddTaskScreen({Key key, this.onAddClicked}) : super(key: key);*/

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0))),
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  "Add text",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: Colors.lightBlueAccent),
                ),
              ),
              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                controller: controller,
              ),
              ElevatedButton(
                onPressed: () {
                  Provider.of<TaskData>(context,listen: false).addNewTask(controller.text);
                  Navigator.pop(context);
                  /*onAddClicked(_controller.text);*/
                },
                child: Text(
                  "Add",
                  style: TextStyle(fontSize: 16),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightBlueAccent)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
