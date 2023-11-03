import 'package:todo_bloc_sample/todo/domain/entities/todo_entity.dart';
import 'package:todo_bloc_sample/todo/domain/repositories/todos_repository.dart';

class GetTodosUC {
  final TodosRepository repository;

  GetTodosUC(this.repository);

  Future<List<Todo>> call() async {
    return await repository.fetchTodos();
  }
}
