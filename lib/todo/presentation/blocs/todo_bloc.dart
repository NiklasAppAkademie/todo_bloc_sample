import 'package:bloc/bloc.dart';
import 'package:todo_bloc_sample/todo/domain/entities/todo_entity.dart';
import 'package:todo_bloc_sample/todo/domain/use_cases/get_todos_uc.dart';
import 'package:todo_bloc_sample/todo/presentation/blocs/todo_events.dart';
import 'package:todo_bloc_sample/todo/presentation/blocs/todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final GetTodosUC getTodosUC;

  TodoBloc(this.getTodosUC) : super(TodoState([])) {
    on<LoadTodos>((event, emit) async {
      List<Todo> todos = await getTodosUC();
      emit(TodoState(todos));
    });

    on<ToggleTodo>((event, emit) {
      List<Todo> currentTodos = state.todos;
      Todo selectedTodo =
          currentTodos.firstWhere((todo) => todo.title == event.item.title);
      selectedTodo.done = !selectedTodo.done;
      emit(TodoState(currentTodos));
    });

    on<CreateTodo>(
      (event, emit) {
        List<Todo> currentTodos = state.todos;
        currentTodos.add(Todo(event.title));
        emit(TodoState(currentTodos));
      },
    );
  }
}
