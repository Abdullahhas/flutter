import 'package:flutter/material.dart';
import 'Next.dart';
import 'splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'practice'
            ),
        ),

        body : Column(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(
                child: Text(
                  'Hello World',
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
                      MaterialPageRoute(builder: (context) => Next()),
                    );
                  },
                  child: Text('Next'),
                );
              }
            )
            
        
          ],
        ),
       
      )
     
    );
    
  }
}
