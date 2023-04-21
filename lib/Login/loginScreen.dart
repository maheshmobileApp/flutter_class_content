import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Screen")),
      body: Column(
        children: [
          TextField(),
          TextField(),
          Container(
            // color: Colors.red,
            child: Text(
              "Hello This is Text Widge ASHDJKAHDKJAH KJHAKJ DHAHAKJHDKJALhdskjsaHDJKLAHDKJLAhdkjaHDKJAhdkjhADKJDKJL",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              maxLines: 2,
            ),
            height: 150,
            width: 400,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 5),
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue),
          ),
        ],
      ),
      drawer: Container(
        color: Colors.green,
        width: 200,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("pressed the floating button");
          Navigator.pushNamed(context, "/home");
        },
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}

//EdgeInsets.all()
//        margin: EdgeInsets.only(top: 20,left: 10,right:10,bottom:20),
// EdgeInsets.symmetric(horizontal: 10,vertical: 20),

// Login form validation
// take two textfields and one button

// on click on button validate the input textfield in valid or not
//if not valid show the error message
// textfiled
//button
// validation email and password
// form key
