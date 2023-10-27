import 'package:todo_bloc_sample/todo/domain/todo_model.dart';

abstract class TodoEvent {}

class ToggleTodo extends TodoEvent {
  ToggleTodo(this.item);

  Todo item;
}

class CreateTodo extends TodoEvent {
  CreateTodo(this.title);

  String title;
}
