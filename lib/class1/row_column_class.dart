import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RowAndColumnExample extends StatefulWidget {
  const RowAndColumnExample({super.key});

  @override
  State<RowAndColumnExample> createState() => _RowAndColumnExampleState();
}

class _RowAndColumnExampleState extends State<RowAndColumnExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row & colun class")),
      body: Container(
        color: Colors.red,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.black,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.orange,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.yellow,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.blue,
          )
        ]),
      ),
    );
  }
}
