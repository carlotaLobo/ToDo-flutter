import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/tasks.dart';
import 'dart:collection';// no modificable la lista

class TaskData extends ChangeNotifier {
  List<Task> _tasks = []; // privado


  int get taskCount {
    return _tasks.length;
  }

  void addTask(String data) {
    _tasks.add(Task(task: data));

    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks { // para no poder modificar la lista 
    return UnmodifiableListView(_tasks);
  }

  void updateTask(Task task){
    task.isChecked();
    notifyListeners();
  }

  void deleteTask(int task){

    _tasks.removeAt(task);
    notifyListeners();

  }

  
}
