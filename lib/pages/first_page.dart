import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st page"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to 2nd page"),
          onPressed: () {
            Navigator.pushNamed(context, '/secondpage');
          },
        ),
      ),
    );
  }
}
