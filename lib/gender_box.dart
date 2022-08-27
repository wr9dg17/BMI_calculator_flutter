import 'package:flutter/material.dart';
import 'box.dart';
import 'consts.dart';

class GenderBox extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color colour;
  final Function onPress;

  const GenderBox({
    Key? key,
    required this.icon,
    required this.label,
    required this.colour,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Box(
        colour: colour,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 80.0,
            ),
            const SizedBox(height: 15.0),
            Text(label, style: kLabelTextStyle)
          ],
        ),
      ),
    );
  }
}
