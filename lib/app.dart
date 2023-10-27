import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_sample/todo/presentation/blocs/todo_bloc.dart';
import 'package:todo_bloc_sample/todo/presentation/pages/todo_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TodoBloc(),
      child: MaterialApp(
        home: TodoPage(),
      ),
    );
  }
}
