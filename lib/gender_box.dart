import 'package:flutter/material.dart';
import 'box.dart';

class GenderBox extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color colour;

  const GenderBox({
    Key? key,
    required this.icon,
    required this.label,
    required this.colour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Box(
      colour: colour,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 80.0,
          ),
          const SizedBox(height: 15.0),
          Text(
            label,
            style: const TextStyle(
              fontSize: 18.0,
              color: Color(0xFF8D8E98),
            ),
          )
        ],
      ),
    );
  }
}
