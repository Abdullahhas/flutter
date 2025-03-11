import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    ));
}



class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          title: Text('My First Apps'),
          centerTitle: true,
          backgroundColor: Colors.blue[400],
        ),
        body: Center(
          child: Image.asset('assets/p1.jpg'),
          
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text('Click me'),
          backgroundColor: Colors.red[400],
        ),
      );
  }
}
