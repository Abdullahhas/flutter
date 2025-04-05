import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),

    );

    
  


  }

}
class MyHomePage extends StatelessWidget {
      
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Practice'),
          ),
          body: GridView.count(crossAxisCount: 3 ,
           children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 color: Colors.red,
                 child: const Center(
                   child: Text(
                     'container 5',
                     style: TextStyle(
                       color: Colors.white,
                     ),
                   ),
                 ),
               ),
             ),
             

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      'container 1',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 color: Colors.blueGrey,
                 child: const Center(
                   child: Text(
                     'container 6',
                     style: TextStyle(
                       color: Colors.white,
                     ),
                   ),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 color: Colors.yellow,
                 child: const Center(
                   child: Text(
                     'container 7',
                     style: TextStyle(
                       color: Colors.white,
                     ),
                   ),
                 ),
               ),
             ),
          
           ],
           )
        );
      }
}
      