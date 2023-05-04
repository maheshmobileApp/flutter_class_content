import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:dio/dio.dart';
import 'package:lucid_training_class/apirequest/carModelClass.dart';

class APIRequestClass extends StatefulWidget {
  const APIRequestClass({super.key});

  @override
  State<APIRequestClass> createState() => _APIRequestClassState();
}

class _APIRequestClassState extends State<APIRequestClass> {
  List<Result>? result = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Api request ")),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                getTheDataFromServer();
              },
              child: Text("Get The data")),
          Container(
            height: MediaQuery.of(context).size.height - 10,
            
            
        
        
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: result?.length ?? 0,
              itemBuilder: (context, index) {
                final carObject = result![index];
                return ListTile(
                  title: Text(carObject.carMakeTitle ?? ""),
                  subtitle: Text(carObject.dtCreated ?? ""),
                );
              },
            ),
          )
        ],
      ),
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
    final resultData = responseData.data;
    //print(responseData["statucscode"]);

    final carModelObject = CarMakeModelClass.fromJson(resultData);
    print(carModelObject.statuscode);
    print(carModelObject.result);
    setState(() {
      result = carModelObject.result;
    });
    print(resultData);
    /*

    {
statuscode:
result:[]


    }

    //convert json to dart class 

{} -> class


class ResultClass {
int statucsCode;
List<modelResult> result;

}

class modelResult {


}

1. api request 
2. json to dart class
3. display in listview 
JSON

    
     */
  }

  // {}
  //[]
}
