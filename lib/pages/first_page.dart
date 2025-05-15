import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/home_page.dart';
import 'package:flutter_basics/pages/profile_page.dart';
import 'package:flutter_basics/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [HomePage(), SettingsPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st page"),
        backgroundColor: Colors.amber[200],
      ),

      drawer: Drawer(
        backgroundColor: Colors.amber[300],
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(Icons.favorite, size: 48, color: Colors.red),
            ),

            ListTile(
              leading: Icon(Icons.home, size: 24),
              title: Text("H O M E"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              },
            ),

            ListTile(
              leading: Icon(Icons.settings, size: 24),
              title: Text("S E T T I N G S"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settingspage');
              },
            ),
            ListTile(
              leading: Icon(Icons.person, size: 24),
              title: Text("P R O F I L E"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settingspage');
              },
            ),
          ],
        ),
      ),

      body: _pages[_selectedIndex],
      //Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 24),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 24),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 24),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
