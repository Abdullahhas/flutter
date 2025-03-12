import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: NinCard(),
    ));
}

class NinCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('My ID Card',
        style : TextStyle(
          color: Colors.white,
        )
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
       
        
      ),
    );
  }
}





// class Home extends StatelessWidget{
//   @override
//   Widget build(BuildContext context)
//   {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('My First Apps'),
//           centerTitle: true,
//           backgroundColor: Colors.blue[400],
//         ),
//         body:Padding(
//           padding: EdgeInsets.all(20.0),
//           child: Text('Hello World'),
//         ), 
          
        
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           child: Text('Click me'),
//           backgroundColor: Colors.red[400],
//         ),
//       );
//   }
// }

