import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Column(
        children: [
          // Top image
          Container(
            height: 200,
            color: Colors.grey[300],
            child: Center(
              child: Icon(Icons.image, size: 100, color: Colors.grey[600]),
            ),
          ),
          // Pizza list
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                PizzaItem(name: 'Pizza large meat', price: 13),
                PizzaItem(name: 'Pizza large Fish', price: 14),
                PizzaItem(name: 'Pizza Medium Fish', price: 11),
                PizzaItem(name: 'Pizza Large chicken', price: 15),
              ],
            ),
          ),
        ],
      ),
    ),
  ));
}

Widget PizzaItem({required String name, required int price}) {
  return Container(
    margin: EdgeInsets.only(bottom: 16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 8,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: Row(
      children: [
        // Pizza image
        Container(
          width: 80,
          height: 80,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[300],
          ),
          child: Center(
            child: Icon(Icons.local_pizza, size: 40, color: Colors.grey[600]),
          ),
        ),
        // Pizza details
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                'Available',
                style: TextStyle(color: Colors.grey[600]),
              ),
              Row(
                children: List.generate(
                  5,
                  (index) => Icon(Icons.star, size: 16, color: Colors.yellow[700]),
                ),
              ),
            ],
          ),
        ),
        // Price
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: Text(
            '\$$price',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}