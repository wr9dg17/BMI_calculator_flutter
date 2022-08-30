import 'package:flutter/material.dart';

class RoundCircleButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  const RoundCircleButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => onPressed(),
      fillColor: const Color(0xFF4C4F5E),
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(icon),
    );
  }
}
