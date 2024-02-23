import 'package:flutter/material.dart';

class Custom_Bar extends StatelessWidget {
  const Custom_Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("BabyHuB"),
      leading: const Icon(Icons.menu),
      actions: const [
        Icon(Icons.search),
        Icon(Icons.notification_add),
      ],
    );
  }
}
