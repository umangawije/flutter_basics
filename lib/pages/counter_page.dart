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
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You Pushed button this many times"),
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
