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
        body: GridView.builder(
          itemCount: 64,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemBuilder:
              (context, index) => Container(
                color: Colors.deepPurple,
                margin: EdgeInsets.all(4),
              ),
        ),
      ),
    );
  }
}
