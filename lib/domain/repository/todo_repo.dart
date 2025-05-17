// repos include what the Todo class can do

import 'package:todo_clean_bloc/domain/models/todo.dart';

abstract class TodoRepo {
  Future<List<Todo>> getTodos();

  Future<void> addTodo(Todo newTodo);

  Future<void> updateTodo(Todo todo);

  Future<void> deleteTodo(Todo todo);
}
