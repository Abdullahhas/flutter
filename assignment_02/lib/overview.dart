import 'package:flutter/material.dart';

void main() {
  runApp(Overview());
}

class Overview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
                child: Row(
                  children: [
                    Text(
                      "Cheese Burger",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16),

                    Text('5.0', style: TextStyle(color: Colors.amber)),
                  ],
                ),
              ),

              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(40, 30, 0, 0),
                        child: Row(
                          children: [
                            Icon(Icons.lock_clock),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Delivery",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "25 min of preparation",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.fromLTRB(0, 30, 10, 0),
                        child: Row(
                          children: [
                            Icon(Icons.cloud),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Portion",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "for one person",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Container(
                        // color: Colors.amber,
                        padding: EdgeInsets.fromLTRB(0, 30, 50, 0),
                        child: Row(
                          children: [
                            Icon(Icons.price_check),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Price",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Rs 99.00",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 50),
                    child: Image.asset("./assets/p2.jpeg", width: 230),
                  ),
                ],
              ),

              Container(
                padding: EdgeInsets.fromLTRB(40, 30, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ingredients"),
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

                            padding: EdgeInsets.fromLTRB(0, 10, 3, 10),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/p1.jpeg',

                                  width: 50,
                                  height: 70,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 5,
                                ), // Space between image and text
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
                                  width: 50,
                                  height: 70,
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
                                  width: 50,
                                  height: 70,
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
                                  width: 50,
                                  height: 70,
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
                                  width: 50,
                                  height: 70,
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

                    Text(
                      'The key to a perfect cheeseburger comes straight from the butcher. '
                      'We got ours courtesy of Dickson’s Farmstand Meats.',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 150,
                          vertical: 15,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),

                    SizedBox(width: 10), // Add space between buttons

                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: EdgeInsets.all(10),
                        elevation: 2,
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
