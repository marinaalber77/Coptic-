import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'Detail.dart';
class prayersScreen extends StatefulWidget {
  const prayersScreen({Key? key}) : super(key: key);

  @override
  _prayersScreenState createState() => _prayersScreenState();
}

class _prayersScreenState extends State<prayersScreen> {
  Color colorApp=Color.fromRGBO(59, 121, 55, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
       body: GridView(
         gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
         children: [
           GestureDetector(
             onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return details();
                  },
                  )
              );
             },
             child: Container(
               margin: EdgeInsets.all(5),
                 child: Card(
                   color: Colors.black,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(25)
                   ),
                   elevation: 10,
                   shadowColor: Colors.black.withOpacity(0.5),
                   child: Center(
                     child: Text("صلاة باكر",textAlign: TextAlign.center,
                       style: TextStyle(
                       color:Color(0xffd7d7d7),
                       fontStyle: FontStyle.italic,
                       fontSize: 22,
                         fontWeight: FontWeight.bold
                       ),
                     ),
                   ),
                 )),
           ),
           GestureDetector(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(
                 builder: (context){
                   return details();
                 },
               )
               );
             },
             child: Container(
                 margin: EdgeInsets.all(5),
                 child: Card(
                   color: Colors.black,
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(25)
                   ),
                   elevation: 10,
                   shadowColor: Colors.black.withOpacity(0.5),
                   child: Center(
                     child: Text("صلاة الساعه الثالثه",textAlign: TextAlign.center,
                       style: TextStyle(
                           color:Color(0xffd7d7d7),
                           fontStyle: FontStyle.italic,
                           fontSize: 22,
                           fontWeight: FontWeight.bold
                       ),
                     ),
                   ),
                 )),
           ),
           GestureDetector(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(
                 builder: (context){
                   return details();
                 },
               )
               );
             },
             child: Container(
                 margin: EdgeInsets.all(5),
                 child: Card(
                   color: Colors.black,
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(25)
                   ),
                   elevation: 10,
                   shadowColor: Colors.black.withOpacity(0.5),
                   child: Center(
                     child: Text("صلاة الساعه السادسه",textAlign: TextAlign.center,
                       style: TextStyle(
                           color:Color(0xffd7d7d7),
                           fontStyle: FontStyle.italic,
                           fontSize: 22,
                           fontWeight: FontWeight.bold
                       ),
                     ),
                   ),
                 )),
           ),
           GestureDetector(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(
                 builder: (context){
                   return details();
                 },
               )
               );
             },
             child: Container(
                 margin: EdgeInsets.all(5),
                 child: Card(
                   color: Colors.black,
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(25)
                   ),
                   elevation: 10,
                   shadowColor: Colors.black.withOpacity(0.5),
                   child: Center(
                     child: Text("صلاة الساعه الحاديه عشر",textAlign: TextAlign.center,
                       style: TextStyle(
                           color:Color(0xffd7d7d7),
                           fontStyle: FontStyle.italic,
                           fontSize: 22,
                           fontWeight: FontWeight.bold
                       ),
                     ),
                   ),
                 )),
           ),
           GestureDetector(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(
                 builder: (context){
                   return details();
                 },
               )
               );
             },
             child: Container(
                 margin: EdgeInsets.all(5),
                 child: Card(
                   color: Colors.black,
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(25)
                   ),
                   elevation: 10,
                   shadowColor: Colors.black.withOpacity(0.5),
                   child: Center(
                     child: Text("صلاة النوم",textAlign: TextAlign.center,
                       style: TextStyle(
                           color:Color(0xffd7d7d7),
                           fontStyle: FontStyle.italic,
                           fontSize: 22,
                           fontWeight: FontWeight.bold
                       ),
                     ),
                   ),
                 )),
           ),
         ],
       ),
    );
  }
}
