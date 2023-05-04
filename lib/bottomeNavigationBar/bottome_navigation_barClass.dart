import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lucid_training_class/Home/homeScreen.dart';
import 'package:lucid_training_class/bottomeNavigationBar/categories.dart';
import 'package:lucid_training_class/bottomeNavigationBar/notification.dart';

import 'HomeScreen.dart';

class BottomNavigationBarClass extends StatefulWidget {
  const BottomNavigationBarClass({super.key});

  @override
  State<BottomNavigationBarClass> createState() =>
      _BottomNavigationBarClassState();
}

class _BottomNavigationBarClassState extends State<BottomNavigationBarClass> {
  List<Widget> _controllers = [
    HomeScreen(),
    CategoriesScreen(),
    NotificationScreen()
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(title: Text("Navigation Bar")),
      body: _controllers[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarms), label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notification")
        ],
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
    );
  }
}
