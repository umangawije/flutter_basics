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
      drawer: Drawer(
        backgroundColor: Colors.amber[300],
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.favorite, size: 48)),

            ListTile(
              leading: Icon(Icons.home, size: 24),
              title: Text("H O M E"),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.settings, size: 24),
              title: Text("S E T T I N G S"),
              onTap: () {},
            ),
          ],
        ),
      ),
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
