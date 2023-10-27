import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_sample/todo/domain/todo_model.dart';
import 'package:todo_bloc_sample/todo/presentation/blocs/todo_bloc.dart';
import 'package:todo_bloc_sample/todo/presentation/blocs/todo_events.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key, required this.item});

  final Todo item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          context.read<TodoBloc>().add(ToggleTodo(item));
        },
        child: Container(
          decoration: BoxDecoration(
              color: item.done ? Colors.green : Colors.grey.shade200),
          padding: const EdgeInsets.all(12.0),
          child: Row(children: [
            Expanded(child: Text(item.title)),
            if (item.done) const Icon(Icons.check)
          ]),
        ),
      ),
    );
  }
}
