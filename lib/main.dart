import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/counter_page.dart';
import 'package:flutter_basics/pages/todo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: TodoPage());
  }
}
