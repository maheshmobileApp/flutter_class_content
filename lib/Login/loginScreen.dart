import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Screen")),
      backgroundColor: Color.fromRGBO(38, 78, 202, 1),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Enter Email";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    hintText: "Enter Email"),
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: _passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Enter password";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    hintText: "Enter Password"),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  //validate the form
                  if (formKey.currentState!.validate()) {
                    print("validation done");
                      Navigator.pushNamed(context, "/home");
                  } else {
                    print("not validate");
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text("Login",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black)),
                  width: 357,
                  height: 71,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromRGBO(158, 152, 152, 1), width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // drawer: Container(
      //   color: Colors.green,
      //   width: 200,
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     print("pressed the floating button");
      //     Navigator.pushNamed(context, "/home");
      //   },
      //   child: Icon(Icons.add_a_photo),
      // ),
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
/*
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
 */
