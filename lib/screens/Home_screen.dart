import 'package:flutter/material.dart';
import 'package:flutter_proj/screens/add_phone_screen.dart';
import 'package:flutter_proj/screens/Phone_List_Screen.dart';
import 'package:flutter_proj/screens/settings_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Inventory System'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddPhoneScreen()),
                );
              },
              child: Text('Add Phone'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhoneListScreen()),
                );
              },
              child: Text('View Phone List'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
                );
              },
              child: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}