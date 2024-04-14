import 'package:flutter/material.dart';

class Language_LearningApp extends StatefulWidget {
  const Language_LearningApp({super.key});

  @override
  State<Language_LearningApp> createState() => _Language_LearningAppState();
}

class _Language_LearningAppState extends State<Language_LearningApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text("Language Learning App(Toku App)",
        style: TextStyle(
          color: Colors.white
        ),),
        actions: [],),
        body: Container(
          child:Text("Hi Let's Learn") 
        ,),
    );
  }
}