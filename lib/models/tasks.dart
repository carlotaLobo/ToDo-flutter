class Task {
  final String task;
  bool isDone;

  Task({
    this.isDone = false,
    this.task,
  }); // por defecto le mandamos el valor false para que no de error

  void isChecked() {
    this.isDone = !isDone;
  }
  
}
