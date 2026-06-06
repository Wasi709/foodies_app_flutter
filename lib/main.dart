import 'package:flutter/material.dart';

void main() {
  runApp(FoodiesApp());
}

class FoodiesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodies App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {'name': 'Zinger Burger', 'price': 450},
    {'name': 'Chicken Pizza', 'price': 1200},
    {'name': 'Loaded Fries', 'price': 350},
    {'name': 'Cold Drink', 'price': 100},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foodies Menu'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              title: Text(
                menuItems[index]['name'],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Rs. ${menuItems[index]['price']}'),
              trailing: ElevatedButton(
                onPressed: () {
                  // Kal WhatsApp add karenge
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${menuItems[index]['name']} selected!')),
                  );
                },
                child: Text('Order'),
              ),
            ),
          );
        },
      ),
    );
  }
}