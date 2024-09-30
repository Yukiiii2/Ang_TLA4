import 'package:flutter/material.dart';
import 'package:flutter_proj/screens/Home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Phone Inventory',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(), // Sets HomeScreen as the initial screen
    );
  }
}
