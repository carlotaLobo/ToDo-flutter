import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_title.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemBuilder: (context, lisTask) {
              return TaskListTitle(
                texto: taskData.tasks[lisTask].task,
                isCheck: taskData.tasks[lisTask].isDone,
                checkboxCallback: (checkboxState) {
                  taskData.updateTask(taskData.tasks[lisTask]);
                },
                delete: () {
                  taskData.deleteTask(lisTask);
                },
              );
            },
            itemCount: taskData.taskCount);
      },
    );
  }
}
