import 'package:flutter/material.dart';

void main() {
  runApp(Burger());
}

class Burger extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'name': 'Chees Burger',
      'price': 99.00,
      'image': 'assets/p1.jpeg',
      'rating': 5.0,
    },
    {
      'name': 'Chees Burger',
      'price': 79.00,
      'image': 'assets/p1.jpeg',
      'rating': 5.0,
    },
    {
      'name': 'Chees Burger',
      'price': 129.00,
      'image': 'assets/p1.jpeg',
      'rating': 5.0,
    },
    {
      'name': 'Chees Burger',
      'price': 89.00,
      'image': 'assets/p1.jpeg',
      'rating': 5.0,
    },
    {
      'name': 'Chees Burger',
      'price': 99.00,
      'image': 'assets/p1.jpeg',
      'rating': 5.0,
    },
    {
      'name': 'Chees Burger',
      'price': 79.00,
      'image': 'assets/p1.jpeg',
      'rating': 5.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> column1 = [];
    List<Widget> column2 = [];

    // Divide items into two columns
    for (int i = 0; i < items.length; i++) {
      Widget itemCard = _buildItemCard(
        items[i]['name'],
        items[i]['price'],
        items[i]['image'],
        items[i]['rating'],
      );

      if (i % 2 == 0) {
        column1.add(itemCard);
      } else {
        column2.add(itemCard);
      }
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Burger App"),
          leading: Icon(Icons.menu), // Menu icon on the left side
          actions: [
            Icon(Icons.notifications),
            SizedBox(width: 10),
            Icon(Icons.shopping_cart),
            SizedBox(width: 10),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // First column
                Expanded(child: Column(children: column1)),
                SizedBox(width: 10), // Space between columns
                // Second column
                Expanded(child: Column(children: column2)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Card builder function
  Widget _buildItemCard(
    String name,
    double price,
    String image,
    double rating,
  ) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 1,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image, width: 70, height: 70, fit: BoxFit.cover),
          SizedBox(height: 5),
          Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.amber, size: 14),
              SizedBox(width: 2),
              Text(rating.toString(), style: TextStyle(color: Colors.grey)),
            ],
          ),
          SizedBox(height: 5),
          Text(
            "\$${price.toStringAsFixed(2)}",
            style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
