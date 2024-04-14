import 'package:flutter/material.dart';

class BusinessCard extends StatefulWidget {
  const BusinessCard({super.key});

  @override
  State<BusinessCard> createState() => _BusinessCardState();
}

class _BusinessCardState extends State<BusinessCard> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFF2B475E),
      // appBar: AppBar(
      //   title: Text("Business card"),
      // ),
      body:Column(
         mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
             const Column(
              children: [
                
                Center(child: CircleAvatarImage(position: 'images/IMG-20230114-WA0045.jpg',)),
                  SizedBox(height: 10,),
                  Column(
                    children: [
                      Text("Moustafa Abd El-Rahim",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Galada',
                      ),),
                      Text("Flutter Developer",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Pacifico'
                      
                      ),),
                    ],
                  ),
              ],
            ),
           Divider(
            height: 10,
            thickness: 0.5,
            indent: 60,
            endIndent: 60,
            color: Colors.white,
           ),
              Column(
                children: [
                  customText(txt: '01117840406', icona: Icons.phone),
                  
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                        ),
                      child:const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left:8.0),
                              child: Icon(Icons.mail,
                              color: Color(0xFF2B475E),
                              size: 40,),
                            ), 
                            Padding(
                              padding: EdgeInsets.only(left:22.0),
                              child: Text(
                                "moustafabdelrm@gmail.com",
                                style: TextStyle(
                                  fontSize: 20
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ),
                  ),
                ],
              )
               
               
        ],
      )
    );
  }
}









class customImage extends StatelessWidget {
  final String position;
  const customImage({super.key, required this.position});

  @override
  Widget build(BuildContext context) {
    return Container( 
                padding: const  EdgeInsets.all(3),
                 decoration:BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                
                 ),
                child: CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage(position,),
                           ),
              );
  }
}


class CircleAvatarImage extends StatelessWidget {
  final String position;
  const CircleAvatarImage({super.key, required this.position});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 113,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 110,
        backgroundImage: AssetImage(position)
      ),
    );
  }
}


// ignore: must_be_immutable
class customText extends StatelessWidget {
  final String txt;
   var icona;
   customText({super.key, required this.txt,required this.icona});

  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                     height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                        ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Row(
                          children: [
                             Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(icona,
                              color: Color(0xFF2B475E),
                              size: 40,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:22.0),
                              child: Text(
                                txt,
                                style: const TextStyle(
                                  fontSize: 30
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ),
                  );}}