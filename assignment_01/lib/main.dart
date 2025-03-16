import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final border = OutlineInputBorder(
    borderSide: BorderSide(
      width: 1.0,
      style: BorderStyle.solid,
      color: Colors.grey,
    ),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu), // Menu icon on the left side
          actions: [
            Icon(Icons.notifications),
            SizedBox(width: 10), // Space between icons
            Icon(Icons.shopping_cart),
            SizedBox(width: 10),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: "Search your favourite food",
                          hintStyle: TextStyle(color: Colors.black),
                          prefixIcon: Icon(Icons.search),
                          prefixIconColor: Colors.black,
                          filled: true,
                          fillColor: Colors.white,

                          focusedBorder: border,
                          enabledBorder: border,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      color: Colors.black,
                      child: Icon(Icons.menu, color: Colors.white),
                    ),
                  ],
                ),
              ),

              Container(
                alignment: Alignment.centerLeft,
                padding:EdgeInsets.fromLTRB(15, 20, 0, 0),
                child: Text(
                  "Food Category",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18 ,
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
