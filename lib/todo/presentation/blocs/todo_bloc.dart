import 'package:bloc/bloc.dart';
import 'package:todo_bloc_sample/todo/domain/todo_model.dart';
import 'package:todo_bloc_sample/todo/presentation/blocs/todo_events.dart';
import 'package:todo_bloc_sample/todo/presentation/blocs/todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc()
      : super(TodoState([
          Todo("Aufräumen"),
          Todo("Rasen mähen"),
          Todo("Kochen"),
          Todo("Duschen")
        ])) {
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
