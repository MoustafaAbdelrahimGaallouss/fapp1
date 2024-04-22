import 'package:flutter/material.dart';
// import 'Test_API.dart';
import 'Test_Provider.dart';
// import 'Basketball.dart';
// import 'Language_Learning_app.dart';
// import 'Business_Card.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
     home:testone()
      //  home:Basketball()
      // home:BusinessCard()
       //home:TestAPI(),
      // home:Language_LearningApp() ,
    );}}

    // You are applying Flutter's app_plugin_loader Gradle plugin imperatively using the apply script
    //  method, which is deprecated and will be removed in a future release.
    //   Migrate to applying Gradle plugins with the declarative plugins block:
    //    https://flutter.dev/go/flutter-gradle-plugin-apply
