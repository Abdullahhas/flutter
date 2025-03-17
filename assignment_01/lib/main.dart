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
        body: SingleChildScrollView(
          child: Center(
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
                  padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
                  child: Text(
                    "Food Category",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 242, 242),
                          borderRadius: BorderRadius.circular(12),
                        ),

                        padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/p1.jpeg',
                              width: 70,
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 5), // Space between image and text
                            Text(
                              "Pizza",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 242, 242),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/p2.jpeg',
                              width: 70,
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Pizza",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 242, 242),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/p3.jpeg',
                              width: 70,
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Pizza",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 242, 242),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/p4.jpeg',
                              width: 70,
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Pizza",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 242, 242),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/p5.jpeg',
                              width: 70,
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Pizza",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
                  child: Image.asset(
                    './assets/p6.jpeg',
                    width: 10,
                    height: 160,
                    fit:
                        BoxFit
                            .cover, // Ensures the image covers the entire width
                  ),
                ),

                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
                  child: Text(
                    "Food Menu",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // First Card
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 242, 242),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/p1.jpeg',
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "French Fry",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 14),
                                SizedBox(width: 2),
                                Text(
                                  "4.8",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            SizedBox(height: 3),
                            Text(
                              "\$109.99",
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Second Card
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 242, 242),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/p2.jpeg',
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Chees Burger",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 14),
                                SizedBox(width: 2),
                                Text(
                                  "5.0",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            SizedBox(height: 3),
                            Text(
                              "\$99.00",
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Third Card
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 242, 242),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/p3.jpeg',
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Chicken Fry",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 14),
                                SizedBox(width: 2),
                                Text(
                                  "4.8",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            SizedBox(height: 3),
                            Text(
                              "\$89.99",
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}
