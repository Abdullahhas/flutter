import 'package:flutter/material.dart';

class Thirdquestion extends StatelessWidget {
  const Thirdquestion({super.key});

  Future<List<String>> fetchCountries() async {
    await Future.delayed(const Duration(seconds: 5)); 
    return [
      'United States',
      'Canada',
      'United Kingdom',
      'Germany',
      'France',
      'Italy',
      'Spain',
      'Australia',
      'India',
      'China',
      'Japan',
      'Brazil',
      'Mexico',
      'Russia',
      'South Africa',
    ];
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: const Text('Countries List'),
      ),
      body: FutureBuilder<List<String>>(
        future: fetchCountries(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            
            return const Center(
              child: CircularProgressIndicator(),
            );
          } 
          else if (snapshot.hasData) {
           
            final countries = snapshot.data!;
            return ListView.builder(
              itemCount: countries.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(child: Text('${index+1}')),
                  title: Text(countries[index]),
                  
                  
                );
              },
            );
          } else {
           
            return const Center(
              child: Text('No data available'),
            );
          }
        },
      ),
    );
  }
}