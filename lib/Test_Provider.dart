// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class testone extends StatefulWidget {
  const testone({super.key, });

  @override
  State<testone> createState() => _testoneState();
}

// ignore: camel_case_types
class _testoneState extends State<testone> {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) {
          return Model();
        }))
      ],  
              child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Provider",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: widgetchild()
    )
        );
  }
}

class widgetchild extends StatelessWidget {
  const widgetchild({super.key});

  @override
  Widget build(BuildContext context) {
    // var model=Provider.of<ProvOne>(context,listen: false );
    return  Column(children: [
      Center(child: Text("${context.watch<Model>().name}",
      style: const TextStyle(
        fontSize: 50
      ),)),
      const SizedBox(height: 10,),
      MaterialButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: (){
        context.read<Model>().changeName();
      },
      child: const Text(" Do Something"),
      )
      
    ],);
  }
}

class Model extends ChangeNotifier {
  String name ="Welcome";
  changeName(){
    name="Moustafa";
    notifyListeners();
  }
}