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

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      } else {
        //show message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Counter cannot be less than zero!"),
            duration: Duration(seconds: 2),
          ),
        );
      }
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

            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text("Increment!"),
            ),

            ElevatedButton(
              onPressed: _decrementCounter,
              child: Text("Decrement!"),
            ),
          ],
        ),
      ),
    );
  }
}
