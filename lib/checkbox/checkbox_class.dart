import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CheckBoxClass extends StatefulWidget {
  const CheckBoxClass({super.key});

  @override
  State<CheckBoxClass> createState() => _CheckBoxClassState();
}

class _CheckBoxClassState extends State<CheckBoxClass> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Checkhox class")),
      body: Container(
          child: CheckboxListTile(
        title: Text("Accept terms & Condition"),
        onChanged: (value) {
          setState(() {
            isChecked = value!;
          });
        },
        value: isChecked,
      )),
    );
  }
}
