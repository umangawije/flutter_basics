import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            "Horizontal ListView",
            style: TextStyle(color: Colors.white),
          ),
          leading: Icon(Icons.menu, color: Colors.white),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              print("Container tapped");
            },
            child: Container(
              width: 300,
              height: 300,
              color: Colors.deepPurple[100],
              child: Center(
                child: Text(
                  "Tap Me!!",
                  style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
