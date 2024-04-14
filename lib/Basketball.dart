
import 'package:flutter/material.dart';


class Basketball extends StatefulWidget {
  const Basketball({super.key});

  @override
  State<Basketball> createState() => _BasketballState();
}

class _BasketballState extends State<Basketball> {
  // ignore: non_constant_identifier_names
  int Team_A=0,Team_B=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title:const Text('Point Counter Basket ball',),
      ),
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:16.0,bottom: 60),
            child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
            children: [
              const Text("Team A",style: TextStyle(
                color: Colors.black,
                fontSize: 40
              ),),
              Text("${Team_A}",style: const TextStyle(
                color: Colors.black,
                fontSize: 150
              ),),
               MaterialButton(
            onPressed:(){
              setState(() {
                Team_A++;
              });
            },
            color:Colors.orange,
            child: const Text("add 1 point"),
              ),
               MaterialButton(
            onPressed:(){
              setState(() {
                Team_A+=2;
              });
            },
            color:Colors.orange,
            child: const Text("add 2 point"),
              ),
               MaterialButton(
            onPressed:(){
              setState(() {
                Team_A+=3;
              });
            },
            color:const Color.fromRGBO(255, 152, 0, 1),
            child: const Text("add 3 point"),
              ),
            ],
              ),

              const SizedBox(
                height: 300,
                child: VerticalDivider(
                          thickness: 5,
                          color: Colors.grey,
                ),
              ),
            
              
                Column(
            children: [
              const Text("Team B",style: TextStyle(
                color: Colors.black,
                fontSize: 40
              ),),
              Text("${Team_B}",style: const TextStyle(
                color: Colors.black,
                fontSize: 150
              ),),
               MaterialButton(
            onPressed:(){
              setState(() {
                Team_B++;
              });
            },
            color:Colors.orange,
            child: const Text("add 1 point"),
              ),
               MaterialButton(
            onPressed:(){
              setState(() {
                Team_B+=2;
              });
            },
            color:Colors.orange,
            child: const Text("add 2 point"),
              ),
                MaterialButton(
            onPressed:(){
              setState(() {
                Team_B+=3;
              });
            },
            color:Colors.orange,
            child: const Text("add 3 point"),
              ),
            ],
              ),       
                    ],
                  ),
          ),
          MaterialButton(onPressed: (){
            setState(() {
              Team_A=Team_B=0;
            });
          },
          minWidth: 150,
          color: Colors.orange,
          child: const Text("Reset"),
          ),
          
       ]
       )

    );
  }
}

















//مش شغال ليه ؟؟

// // ignore: must_be_immutable
// class PointButtom extends StatefulWidget {
//   final int point;int tCount;
//  PointButtom({super.key, required this.point,required this.tCount});

//   @override
//   State<PointButtom> createState() => _PointButtomState();
// }



// class _PointButtomState extends State<PointButtom> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialButton(
//       color: Colors.orange,
//       onPressed: (){
//         setState(() {
//           widget.tCount+=widget.point; 
//         });
//       },
//       child: Text(" add ${widget.point} point"),);
//   }
// }


// // ignore: must_be_immutable
// class PointButtom extends StatefulWidget  {
//   final int point;int Count;
//    PointButtom( {super.key, required this.point, required this.Count});

//   @override
//   State<PointButtom> createState() => _PointButtomState() ;
// }

// class _PointButtomState extends State<PointButtom> {
//   @override
//   Widget build(BuildContext context) {
//     return  MaterialButton(
//       onPressed:(){
//         setState(() {
//           widget.Count+=widget.point;
//         });
//         print("${widget.Count}\n");
//       } ,
//       color:Colors.orange,
//       child: Text("add ${widget.point} point"),
//     );
//   }
// }




// class TeamCounter extends StatefulWidget {
//   // ignore: non_constant_identifier_names
//   final String TeamName;
//   // ignore: non_constant_identifier_names
//   final int Teamc;
//   // ignore: non_constant_identifier_names
//   const TeamCounter({super.key,required this.TeamName ,required this.Teamc, });

//   @override
//   State<TeamCounter> createState() => _TeamCounterState();
// }

// class _TeamCounterState extends State<TeamCounter> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text("${widget.TeamName}",style: TextStyle(
//           color: Colors.black,
//           fontSize: 40
//         ),),
//         Text("${widget.Teamc}",style: const TextStyle(
//           color: Colors.black,
//           fontSize: 100
//         ),),
//         PointButtom(point:1,Count:widget.Teamc,),
//         PointButtom(point: 2, Count:widget.Teamc,),
//         PointButtom(point: 3, Count:widget.Teamc,),
//       ],
//     );
//   }
// }

