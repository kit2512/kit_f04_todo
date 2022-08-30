import 'dart:convert';

import 'package:demo_state_app/src/models/todo.dart';
import 'package:http/http.dart' as http;

class TodoRepository {
  Future<List<Todo>> getTodos() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      final uri = Uri.parse("https://jsonplaceholder.typicode.com/todos");
      final response = await http.get(uri);
      final jsonData = jsonDecode(response.body);
      return jsonData.map<Todo>((json) => Todo.fromJson(json)).toList();
    } on Exception catch (_) {
      rethrow;
    }
  }
}
