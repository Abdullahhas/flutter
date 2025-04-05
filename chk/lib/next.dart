
import 'package:flutter/material.dart';
import 'main.dart';
class Next extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next'),
      ),

      body: Column(
        children: [
          Container(
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

          
          Builder(
            builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  MyHomePage()),
                  );
                },
                child: const Text('Next'),

              );
                
            }
          ),
        
        ],
      ),

      
    );
  }
}