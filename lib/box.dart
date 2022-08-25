import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Color colour;
  final Widget? child;

  const Box({Key? key, required this.colour, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.all(15.0),
      child: child,
    );
  }
}
