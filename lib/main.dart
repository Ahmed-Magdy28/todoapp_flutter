import 'package:flutter/material.dart';
import 'package:todoapp_flutter/main_screen.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Todo List',
      home: MainScreen(),
    );
  }
}
