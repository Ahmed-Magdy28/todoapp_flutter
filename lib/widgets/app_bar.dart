import 'package:flutter/material.dart';
import 'package:todoapp_flutter/add_todo.dart';

class MyAppBar extends StatefulWidget {
  void Function({required String todoText}) addTodo;
  MyAppBar({super.key, required this.addTodo});
  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  void openDownSlide() {
    showModalBottomSheet(
      backgroundColor: Colors.grey[300],
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(
            padding: const EdgeInsets.all(20),
            height: 200,
            child: AddTodo(
              addTodo: widget.addTodo,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey[100],
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/todo.png", height: 65),
            const SizedBox(width: 8),
            const Text(
              'Todo List',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: "poppins"),
            ),
          ],
        ),
      ),
      actions: [
        InkWell(
          onTap: openDownSlide,
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.add,
              color: Colors.blueGrey,
              size: 28,
            ),
          ),
        ),
      ],
    );
  }
}
