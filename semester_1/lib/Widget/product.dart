import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String title;
  final String image;
  final double price;

  const ProductWidget({
    required this.title,
    required this.image,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 9,
      color: Colors.amber,
      child: Container(
        padding: EdgeInsets.all(8), // Adjust padding if needed
        height: 600, // Increase the height of the container
        width: 300
        ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              image,
              height: 90, // Adjust image height
              width: 350,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('\$$price'),
            ),
          ],
        ),
      ),
    );
  }
}
