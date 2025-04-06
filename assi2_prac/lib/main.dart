import 'package:flutter/material.dart';
import 'burger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget { 
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20, left: 20),

            child: Row(
              children: [
                Icon(Icons.menu),
                SizedBox(width: 360),
                Icon(Icons.notifications),
                SizedBox(width: 20),
                Icon(Icons.camera),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              children: [
                // TextField takes available horizontal space
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),

                const SizedBox(width: 10), // spacing between
                // Another widget next to TextField
                IconButton(
                  icon: Icon(Icons.filter_list),
                  onPressed: () {
                    // your action here
                  },
                ),
              ],
            ),
          ),

          
          Container(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: [
                Text(
                  'FOOD CATEGORY',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),

          

          Container(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: SizedBox(
            
              height: 100,
               // adjust height as needed
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                physics:
                    NeverScrollableScrollPhysics(), // prevent scroll inside small grid
                children: List.generate(4, (index) {
                  return Container(
                   
                    decoration: BoxDecoration(
                      
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Replace with your own images or icons
                        Image.asset(
                          'assets/icon$index.png',
                          height: 30,
                          width: 30,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Item ${index + 1}',
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),

         
           Builder(
            builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Burger()),
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
