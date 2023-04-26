import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ToDoTaskScreen extends StatefulWidget {
  const ToDoTaskScreen({super.key});

  @override
  State<ToDoTaskScreen> createState() => _ToDoTaskScreenState();
}

class _ToDoTaskScreenState extends State<ToDoTaskScreen> {
  TextEditingController _todoFieldController = TextEditingController();
  List<String> _tasks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo Task")),
      body: Column(children: [
        Expanded(
            child: Container(
              child: Column(children: [
                TextFormField(
                  controller: _todoFieldController,
                ),
                TextButton(
                    onPressed: () {
                      //
                      setState(() {
                        _tasks.add(_todoFieldController.text);
                      });
                      print("print the tasks list $_tasks");
                    },
                    child: Text("Submit"))
              ]),
            ),
            flex: 1),
        Expanded(
          child: ListView.separated(
            // scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              // return Divider(
              //   height: 5,
              //   color: Colors.red,
              // );
              return Container(
                height: 10,
                color: Colors.blue,
              );
            },
            itemCount: _tasks.length,
            itemBuilder: (context, index) {
              final data = _tasks[index];
              return Container(
                // margin: EdgeInsets.all(10),
                height: 100,
                width: 200,
                child: Text(data),
                color: Colors.orange,
              );
            },
          ),
          flex: 5,
        )
      ]),
    );
  }
}

//400

//1:3