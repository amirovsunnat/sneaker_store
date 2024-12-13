import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      app
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility_rounded), label: "Label1"),
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility_rounded), label: "Label1"),
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility_rounded), label: "Label1"),
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility_rounded), label: "Label1"),
        ],
      ),
    );
  }
}
