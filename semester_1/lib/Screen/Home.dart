import 'package:flutter/material.dart';
import 'package:semester_1/Widget/Custom_Appbar.dart';
import 'package:semester_1/Widget/bottombar.dart';
import 'package:semester_1/Widget/listview_card.dart';

import '../Widget/product.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  // Sample list of products
  final List<Map<String, dynamic>> products = [
    {
      "title": "Product 1",
      "image":
          "https://plus.unsplash.com/premium_photo-1675896084254-dcb626387e1e?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D",
      "price": 500,
    },
    {
      "title": "Product 1",
      "image":
          "https://plus.unsplash.com/premium_photo-1675896084254-dcb626387e1e?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D",
      "price": 500,
    },
    {
      "title": "Product 1",
      "image":
          "https://plus.unsplash.com/premium_photo-1675896084254-dcb626387e1e?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D",
      "price": 500,
    },
    {
      "title": "Product 1",
      "image":
          "https://plus.unsplash.com/premium_photo-1675896084254-dcb626387e1e?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D",
      "price": 500,
    },
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Custom_Bar(),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Categories',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          IconsCard(),
          const SizedBox(height: 8),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "New Arrival",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductWidget(
                  title: product['title'],
                  image: product['image'],
                  price: product['price'],
                );
              },
            ),
          ),
          const SizedBox(height: 8),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Popular Products",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductWidget(
                  title: product['title'],
                  image: product['image'],
                  price: product['price'],
                );
              },
            ),
          ),
          CustomBottomBar(),
        ],
      ),
    );
  }
}
