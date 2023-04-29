import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:dio/dio.dart';

class APIRequestClass extends StatefulWidget {
  const APIRequestClass({super.key});

  @override
  State<APIRequestClass> createState() => _APIRequestClassState();
}

class _APIRequestClassState extends State<APIRequestClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Api request ")),
      body: Column(children: [
        TextButton(
            onPressed: () {
              getTheDataFromServer();
            },
            child: Text("Get The data"))
      ]),
    );
  }

  void getTheDataFromServer() async {
    /*
  
  1.Base Url: https://vbreez-plugins.com + end point : /api/Product/getCarMakes?
2. Method: GET
3.body : null
4.headders: {"ApiKey":"9c120200cd936042f6a441d93fcf11ed"}
   */
    final apiRequestUrl =
        "https://vbreez-plugins.com/api/Product/getCarMakes?categoryId=1&isActive=true";
    final _dio = Dio();
    _dio.options.headers = {"ApiKey": "9c120200cd936042f6a441d93fcf11ed"};

    final responseData = await _dio.get(apiRequestUrl);
    print(responseData);
  }
}
