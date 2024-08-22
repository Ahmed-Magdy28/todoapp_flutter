import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todoapp_flutter/add_todo.dart';
import 'package:todoapp_flutter/widgets/app_bar.dart';
import 'package:todoapp_flutter/widgets/my_drawer.dart';
import 'package:todoapp_flutter/widgets/todo_list.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<String> todoList = [];

  void addTodo({required String todoText}) {
    if (todoList.contains(todoText)) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Already Exists"),
              content: const Text("This todo already exists"),
              actions: [
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Close"),
                  ),
                ),
              ],
            );
          });

      return;
    }

    setState(() {
      todoList.insert(0, todoText);
      Navigator.pop(context);
    });

    updateLocalData();
  }

  void updateLocalData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('todoList', todoList);
  }

  void getLocalData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    todoList = (prefs.getStringList('todoList') ?? []).toList();
    setState(() {});
  }

  @override
  void initState() {
    getLocalData();
    super.initState();
  }

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
              addTodo: addTodo,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: MyAppBar(
          addTodo: addTodo,
        ),
      ),
      drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.blue[100],
        onPressed: openDownSlide,
        child: const Icon(Icons.add),
      ),
      body:
          TodoListBuilder(todoList: todoList, updateLocalData: updateLocalData),
    );
  }
}
