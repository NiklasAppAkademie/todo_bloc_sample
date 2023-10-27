import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_sample/todo/presentation/blocs/todo_bloc.dart';
import 'package:todo_bloc_sample/todo/presentation/blocs/todo_events.dart';
import 'package:todo_bloc_sample/todo/presentation/blocs/todo_state.dart';
import 'package:todo_bloc_sample/todo/presentation/widgets/todo_item.dart';

class TodoPage extends StatelessWidget {
  TodoPage({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: controller,
            ),
            MaterialButton(
                child: const Text("Todo Erstellen"),
                onPressed: () {
                  context.read<TodoBloc>().add(CreateTodo(controller.text));
                  controller.clear();
                }),
            BlocBuilder<TodoBloc, TodoState>(builder: (context, state) {
              return Expanded(
                child: ListView(
                    children: state.todos
                        .map((todo) => TodoItem(item: todo))
                        .toList()),
              );
            }),
          ],
        ),
      ),
    );
  }
}
