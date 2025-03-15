import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final border =  OutlineInputBorder(
                      borderSide: BorderSide(
                       
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0)
                        ),
                    ) ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Currency Convertor' , 
          style: TextStyle(
            color: Colors.black
            ),
            ),
          centerTitle: true,
          
           
        ),
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '0',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Plz enter the amount in USD",
                    hintStyle: TextStyle(
                      color: Colors.black
                      ),
                      prefixIcon: Icon(Icons.monetization_on_outlined),
                      prefixIconColor: Colors.black,
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder:border,
                      enabledBorder: border,
                    ),
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: true,
                      signed: true
                    ),
                  ),
              ),

              //button
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(onPressed: () {
                
                },
                 child: Text(
                  "Convert"
                 ),
                
                 style: TextButton.styleFrom (
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: 
                    Size(double.infinity , 50),
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  
                  ),
                ),
              ),
              )

              
            ]
          ),
        ),
      ),
    );
  }
}
