import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/first_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2nd page"),
        backgroundColor: Colors.lightBlue,
      ),
      drawer: Drawer(),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to 1st page"),
          onPressed: () {
            Navigator.pushNamed(context, '/firstpage');
          },
        ),
      ),
    );
  }
}
