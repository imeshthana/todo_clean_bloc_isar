// converts Todo model into Isar model which we can store in the database

import 'package:isar/isar.dart';
import 'package:todo_clean_bloc/domain/models/todo.dart';
part 'isar_todo.g.dart';  //run: dart run build_runner build

@collection
class TodoIsar {
  Id id = Isar.autoIncrement;
  late String text;
  late bool isCompleted;

  // convert isar object to pure todo to use in the app
  Todo toDomain() {
    return Todo(id: id, text: text, isCompleted: isCompleted);
  }

  // convert pure todo to isar to store
  static TodoIsar fromDomain(Todo todo) {
    return TodoIsar()
      ..id = todo.id
      ..text = todo.text
      ..isCompleted = todo.isCompleted;
  }
}
