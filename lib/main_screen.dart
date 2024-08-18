import 'package:flutter/material.dart';
import 'package:todoapp_flutter/app_bar.dart';
import 'package:todoapp_flutter/container.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar:  MyAppBar(),
      body:  TheBody(),
      drawer: Drawer(child: Text("Drawer data"),),
    );
  }
}
