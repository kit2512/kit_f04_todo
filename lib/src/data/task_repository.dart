import '../provider/task.dart';

abstract class TaskRepository {
  void addTask(Task task);
  void removeTask(Task task);
  void updateTask(Task task, int index);
  Future<List<Task>> getTasks();
  // void setFinishedTask(Task task);
  // Future<List<Task>> getTasksFinish();
  // List<Task> getData(int index);
  // int getIndex(Task task);
}
