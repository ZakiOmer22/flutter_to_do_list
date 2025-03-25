import 'package:flutter/material.dart';
import 'package:to_do_list/cerdit.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:to_do_list/tasks.dart';
import 'settings.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Keep track of the selected tab
  final List<Widget> _pages = [
    TasksPage(), // Improved tasks page
    SettingsPage(), // Placeholder for the settings page
    DisclaimerPage(), // Placeholder for the settings page
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _addTask() {
    // Logic to add a task (placeholder for future implementation)
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Add Task"),
          content: Text("A new task can be added here!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  void _launchGitHub() async {
    const url = 'https://github.com/zakiomer22'; // Replace with your GitHub URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: _addTask, // Call _addTask when the plus icon is pressed
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Zaki Apps',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.task),
              title: Text('My Current List'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                _onItemTapped(0); // Go to tasks page
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                _onItemTapped(1); // Go to settings page
              },
            ),
            ListTile(
              leading: Icon(Icons.code_off_rounded),
              title: Text('Github'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                _onItemTapped(1); // Go to settings page
              },
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.code_off_rounded),
            label: 'Github',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
