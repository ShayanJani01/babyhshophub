import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home, color: Colors.amber),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search, color: Colors.amber),
            onPressed: () {},
          ),
          SizedBox(), // This SizedBox is for the center space
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.amber),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person, color: Colors.amber),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
