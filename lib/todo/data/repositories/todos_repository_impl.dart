import 'package:todo_bloc_sample/todo/data/data_sources/mock_data_source.dart';
import 'package:todo_bloc_sample/todo/data/data_sources/remote_data_source.dart';
import 'package:todo_bloc_sample/todo/data/models/todo_model.dart';
import 'package:todo_bloc_sample/todo/domain/entities/todo_entity.dart';
import 'package:todo_bloc_sample/todo/domain/repositories/todos_repository.dart';

class TodosRepositoryImpl extends TodosRepository {
  MockDataSource mockDataSource = MockDataSource();
  RemoteDataSource remoteDataSource = RemoteDataSource();

  @override
  Future<List<Todo>> fetchTodos() async {
    final List<Map> rawData = await mockDataSource.getMockData();
    return rawData.map((rawTodo) => TodoModel.fromJson(rawTodo)).toList();
  }
}
