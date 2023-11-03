import 'package:todo_bloc_sample/todo/domain/entities/todo_entity.dart';

abstract class TodoEvent {}

class LoadTodos extends TodoEvent {}

class ToggleTodo extends TodoEvent {
  ToggleTodo(this.item);

  Todo item;
}

class CreateTodo extends TodoEvent {
  CreateTodo(this.title);

  String title;
}
