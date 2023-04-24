import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> names = ["shivani", "dinesh", "gowtham", "Lucid"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home Screen")),
        body: ListView.separated(
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
          itemCount: names.length,
          itemBuilder: (context, index) {
            final data = names[index];
            return Container(
              // margin: EdgeInsets.all(10),
              height: 100,
              width: 200,
              child: Text(data),
              color: Colors.orange,
            );
          },
        ));
  }
}

//ListView

/*
ListView(
          children: [
            Container(
              height: 100,
              width: 200,
              color: Colors.orange,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.black,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.orange,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.yellow,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.orange,
            ),  Container(
              height: 100,
              width: 200,
              color: Colors.black,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.orange,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.yellow,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.orange,
            )
          ],
        )
 */