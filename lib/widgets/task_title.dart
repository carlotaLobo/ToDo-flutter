import 'package:flutter/material.dart';


class TaskListTitle extends StatelessWidget {
  final bool isCheck;
  final String texto;
  final Function checkboxCallback;
  final Function delete;

  TaskListTitle({this.texto, this.isCheck, this.checkboxCallback, this.delete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        texto,
        style: TextStyle(
            decoration:
                isCheck ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isCheck,
        onChanged: checkboxCallback, // utilizamos la funcion directamente
        //la funcion que se ejecuta es la que le pasamos por parametro cuando creamos este objeto, en este caso cambia de true a false o de false a true en la clase Task()
      ),
      onLongPress: delete,
    );
  }
}
