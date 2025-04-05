
import 'package:flutter/material.dart';
class Next extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next'),
      ),

      body: Container(
        width: 100,
        height: 100,
        color: Colors.red,
        child: Center(
          child: Text(
            'Hello ',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}