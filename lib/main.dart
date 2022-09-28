import 'package:demo_state_app/src/app.dart';
import 'package:demo_state_app/src/provider/task.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/data/local/share_preferences_repository.dart';
import 'src/data/task_repository.dart';
import 'src/provider/supplier_controller.dart';
import 'src/ui/screen/screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  TaskRepository sharePreferencesRepository =
      SharePreferencesRepository(prefs: await SharedPreferences.getInstance());
  List<Task> tasks = [];

  sharePreferencesRepository.getTasks().then((value) => tasks.addAll(value));

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<TaskManager>(
      create: (context) => TaskManager(
        sharePreferencesRepository: sharePreferencesRepository,
        tasks: tasks,
      ),
    ),
    ChangeNotifierProvider<TaskConfigManager>(
      create: (context) => TaskConfigManager(),
    ),
    ChangeNotifierProvider<AppBarButton>(
      create: (context) => AppBarButton(),
    ),
  ], child: const MyApp()));
}
