import "package:flutter/material.dart";

class Next extends StatelessWidget {
  const Next({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('next page'),
      ),
      body: Center(
        
        child: Text("Hi" , style: TextStyle(
          color: Colors.amber,
        ),),
      ),
    );
  }
}