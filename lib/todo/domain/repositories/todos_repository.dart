import 'package:todo_bloc_sample/todo/domain/entities/todo_entity.dart';

abstract class TodosRepository {
  Future<List<Todo>> fetchTodos();
}
