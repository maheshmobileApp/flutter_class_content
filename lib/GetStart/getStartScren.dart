import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetStartScren extends StatefulWidget {
  const GetStartScren({super.key});

  @override
  State<GetStartScren> createState() => _GetStartScrenState();
}

class _GetStartScrenState extends State<GetStartScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/happy-fruit.svg"),
            Image.asset("assets/logoimage.jpg"),
            Text(
              "Let’s Connect  Together",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 56,
            ),
            InkWell(
              onTap: () {
                print("pressed login screen");
                Navigator.pushNamed(context, "/login");
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
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            InkWell(
              onTap: () {
                print("pressed login screen");
              },
              child: Container(
                alignment: Alignment.center,
                child: Text("Sign up",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                width: 357,
                height: 71,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(250, 152, 132, 1),
                  border: Border.all(
                      color: Color.fromRGBO(158, 152, 152, 1), width: 2),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            SizedBox(
              height: 56,
            ),
          ],
        ),
      ),
    );
  }
}
//rgba(158, 152, 152, 1)
