import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //varianble to hold the counter value
  int _counter = 0;

  //method to increment the counter
  void _incrementCounter() {
    //Set state rebuild the widgets to display the changes(Updated Value)
    setState(() {
      _counter++;
    });
  }

  //User Interface
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
