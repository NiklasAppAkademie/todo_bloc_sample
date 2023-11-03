import 'package:todo_bloc_sample/todo/domain/entities/todo_entity.dart';

class TodoModel extends Todo {
  TodoModel(super.title);

  factory TodoModel.fromJson(Map json) {
    return TodoModel(json["todoName"]);
  }
}
