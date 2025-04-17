import 'package:flutter/material.dart';
import 'next.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'This is the home screen!',
              style: TextStyle(fontSize: 20),
            ),
          ),

          ElevatedButton(onPressed: () {
            Navigator.push(context,
             MaterialPageRoute(builder: (context) =>  Next()) 
             );
          } , child: Text('next'))
        ],
      ),
    );
  }
}

