import 'package:flutter/material.dart';

class AddTodo extends StatefulWidget {
  void Function({required String todoText}) addTodo;
  AddTodo({super.key, required this.addTodo});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  TextEditingController todoText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("add todo"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            autofocus: true,
            autocorrect: true,
            controller: todoText,
            onSubmitted: (value) {
              if (todoText.text.isNotEmpty) {
                widget.addTodo(todoText: todoText.text);
              }

              todoText.clear();
            },
            style: const TextStyle(fontSize: 20, fontFamily: "poppins"),
            decoration: InputDecoration(
              hintText: "Enter your todo",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            if (todoText.text.isNotEmpty) {
              widget.addTodo(todoText: todoText.text);
            }

            todoText.clear();
          },
          child: const Text("Add"),
        ),
      ],
    );
  }
}
