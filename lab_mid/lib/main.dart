import 'package:flutter/material.dart';
import 'ThirdQuestion.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appbar(
          title: "My App",
          image:  AssetImage('assets/port.jpeg')
        ),




        body: Column(
          
          children: [
            TextField(
              decoration: InputDecoration(
                hintText:"Enter your name" ,
              ),
        
              
            ),
        
          
            TextField(
              decoration: InputDecoration(
                hintText:"Enter image url" ,
              ),
        
              
            ),

             Builder(
               builder: (context) {
                 return ElevatedButton(onPressed: () {
                             Navigator.push(context,
                 MaterialPageRoute(builder: (context) =>  Thirdquestion()) 
                 );
                           } , 
                           child: Text('next')
                           );
               }
             )

            
          ],
        ),
      
      ),
    );
  }

  AppBar appbar({required String title, required ImageProvider image}) {
  return AppBar(
    backgroundColor: const Color(0xff8CF441),
    centerTitle: true,
    title: Text(
      title,
      style: const TextStyle(color: Colors.black),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Image(
          image: image,
          width: 40,
          height: 40,
          
        ),
      ),
    ],
  );
}
}