import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      backgroundColor: Colors.orange,
             appBar: AppBar(title: Text("Nofitication")),

      body: Container(child: Text("Nofitication Screen")),
    );
  }
}