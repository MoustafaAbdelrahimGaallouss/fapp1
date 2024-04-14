import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class testone extends StatefulWidget {
  const testone({super.key});

  @override
  State<testone> createState() => _testoneState();
}

class _testoneState extends State<testone> {
 
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
    create: (context)=>ProvOne(),
    child:  Scaffold(
        appBar: AppBar(
          title: Text("Provider"),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),

                Selector<ProvOne,int>(
                  selector: (context,provs1)=>provs1.showSobhanallah,
                  builder: (context ,ProvOne,child){
                  return Text("${ProvOne}",style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                  ),);
                }),
                
                Consumer<ProvOne>(builder: (context ,ProvOne,child){
                  return MaterialButton(color:Colors.amber,
                    onPressed: (){
                      ProvOne.doSobhanallah(); 
                    },
                    child: Text("سبحان الله\t"),
                  );
                }),
              ],
            ),
            /////////
            const SizedBox(
                  height: 20,
                ),
             Column(
               children: [
                 Selector<ProvOne,int>(
                  selector: (context,provs1)=>provs1.showHamdoelallah,
                  builder: (context ,ProvOne,child){
                  return Text("${ProvOne}",style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                  ),);
            }),
            // ignore: avoid_types_as_parameter_names
            Consumer<ProvOne>(builder: (context ,ProvOne,child){
                  return Container(
                    // width: 100,
                    // height: 50,
                    decoration: const BoxDecoration(
                      
                      shape: BoxShape.circle
                    ),
                    child: MaterialButton(
                      color:Colors.amber,
                      onPressed: (){
                        ProvOne.doHamdoelallah();
                      },
                      child: const Text("الحمد لله\t"),
                    ),
                  );
            }),
            ///////
            SizedBox(
              height: 0,
            ),
            const SizedBox(
                  height: 20,
                ),
           Column(
              children: [
                Selector<ProvOne,int>(
                  selector: (context,provs1)=>provs1.showAllahAkber,
                  builder: (context ,ProvOne,child){
                  return Text("${ProvOne}",style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                  ),);
                }),
                Consumer<ProvOne>(builder: (context ,ProvOne,child){
                  return MaterialButton(color:Colors.amber,
                    onPressed: (){
                      ProvOne.doAllahAkber(); 
                    },
                    child: Text("الله اكبر\t"),
                  );
                }),
              ],
            ),
            const SizedBox(
                  height: 20,
                ),
            Consumer<ProvOne>(builder: (context ,ProvOne,child){
                  return MaterialButton(color:Colors.amber,
                    onPressed: (){
                      ProvOne.doZero();
                    },
                    child: Text("تصفير\t"),
                  );
            }),
            
               ],
             ),
          ],
        )
        ),);
  }
}

class ProvOne extends ChangeNotifier{
   var Sobhanallah=0;
    var Hamdoelallah=0;
    var AllahAkber=0;
    //
    get showSobhanallah=>Sobhanallah;
    get showHamdoelallah=>Hamdoelallah;
    get showAllahAkber=>AllahAkber;
   doSobhanallah(){
     Sobhanallah++;
    notifyListeners();
   }
   doHamdoelallah(){
    Hamdoelallah++;
    notifyListeners();
   }
  
   doAllahAkber(){
    AllahAkber++;
    notifyListeners();
   }

  doZero(){
    Sobhanallah=0;
    Hamdoelallah=0;
    AllahAkber=0;
    notifyListeners();
   }
}











// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   var Shawer;
  
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//                children: [
//                  Selector<ProvOne,int>(
//                   selector: (context,provs1)=>Shawer,
//                   builder: (context ,ProvOne,child){
//                   return Text("${ProvOne}",style: TextStyle(
//                     color: Colors.blue,
//                     fontSize: 25,
//                   ),);
//             }),
//             Consumer<ProvOne>(builder: (context ,ProvOne,child){
//                   return Container(
//                     width: 100,
//                     height: 50,
//                     decoration: BoxDecoration(
                      
//                       shape: BoxShape.circle
//                     ),
//                     child: MaterialButton(
//                       color:Colors.grey,
//                       onPressed: (){
//                         ProvOne.doHamdoelallah();
//                       },
//                       child: Text("الحمد لله\t"),
//                     ),
//                   );
//             }),
//             Consumer<ProvOne>(builder: (context ,ProvOne,child){
//                   return MaterialButton(color:Colors.grey,
//                     onPressed: (){
//                       ProvOne.doZero();
//                     },
//                     child: Text("Zero\t"),
//                   );
//             }),
            
//                ],
//              );
//   }
// }