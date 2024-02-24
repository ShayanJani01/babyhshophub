import 'package:flutter/material.dart';

class IconsCard extends StatelessWidget {
  IconsCard({super.key});
  final List<IconData> myIcons = [
    Icons.stroller,
    Icons.bathtub,
    Icons.child_friendly,
    Icons.crib,
    Icons.baby_changing_station,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120, // Height of the horizontal ListView
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Horizontal scrolling
        itemCount: myIcons.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: _buildIconCard(myIcons[index]),
          );
        },
      ),
    );
  }
}

Widget _buildIconCard(IconData iconData) {
  return SizedBox(
    width: 120, // Width of each card
    child: Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData, size: 36),
            const SizedBox(height: 8),
            Text(
              _getIconName(iconData),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

String _getIconName(IconData iconData) {
  if (iconData == Icons.stroller) {
    return "Stroller";
  } else if (iconData == Icons.bathtub) {
    return "Bathtub";
  } else if (iconData == Icons.child_friendly) {
    return "Child Friendly";
  } else if (iconData == Icons.crib) {
    return "Crib";
  } else if (iconData == Icons.baby_changing_station) {
    return "Changing Station";
  } else {
    return "Unknown";
  }
}
