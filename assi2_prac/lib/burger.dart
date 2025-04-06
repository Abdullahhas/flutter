import 'package:flutter/material.dart';

class Burger extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'name': 'Chees Burger',
      'price': 99.00,
      'image': 'assets/burger.png',
    },
    {
      'name': 'Bagel Burger',
      'price': 79.00,
      'image': 'assets/bagel.png',
    },
    {
      'name': 'Egg Burger',
      'price': 129.00,
      'image': 'assets/egg.png',
    },
    {
      'name': 'Cheese Slice',
      'price': 89.00,
      'image': 'assets/cheese.png',
    },
    {
      'name': 'Pizza Slice',
      'price': 109.00,
      'image': 'assets/pizza.png',
    },
    {
      'name': 'Sub Sandwich',
      'price': 119.00,
      'image': 'assets/sandwich.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.75,
          children: items.map((item) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.black12,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset(
                            item['image'],
                            height: 80,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          item['name'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: const [
                            Icon(Icons.star, size: 16, color: Colors.orange),
                            SizedBox(width: 4),
                            Text("5.0"),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '\$${item['price']}',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 12,
                    top: 12,
                    child: Icon(Icons.favorite_border, color: Colors.red),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
