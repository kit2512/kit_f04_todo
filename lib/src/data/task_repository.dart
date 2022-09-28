import '../provider/task.dart';

abstract class TaskRepository {
  void addTask(Task task);
  void removeTask(Task task);
  void updateTask(Task task, int index);
  Future<List<Task>> getTasks();
}
