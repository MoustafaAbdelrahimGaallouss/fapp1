

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class TestAPI extends StatefulWidget {
  const TestAPI({super.key});

  @override
  State<TestAPI> createState() => _TestAPIState();
}

class _TestAPIState extends State<TestAPI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("APi / http"),
      ),
      body:ListView(
        children: [ Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: MaterialButton(
            onPressed: ()  async{
          var response = await get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
         print(response.body);
         
          },
          color: Colors.red,
          textColor: Colors.white,
          child: Text("HTTP Request"),
          ),
        )

        ],
      )
    );
  }
}
/*
flutter clean
flutter channel <master or beta>
flutter upgrade --force
*/