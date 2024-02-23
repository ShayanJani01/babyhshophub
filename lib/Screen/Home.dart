import 'package:flutter/material.dart';
import 'package:semester_1/Widget/Custom_Appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<IconData> myIcons = [
      Icons.stroller,
      Icons.bathtub,
      Icons.child_friendly,
      Icons.crib,
      Icons.baby_changing_station,
    ];

    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Custom_Bar(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Categories"),
          ),
        ],
      ),
    );
  }
}
