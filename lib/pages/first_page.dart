import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st page"),
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
              onTap: () {
                Navigator.pushNamed(context, '/homepage');
              },
            ),

            ListTile(
              leading: Icon(Icons.settings, size: 24),
              title: Text("S E T T I N G S"),
              onTap: () {
                Navigator.pushNamed(context, '/settingspage');
              },
            ),
          ],
        ),
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
