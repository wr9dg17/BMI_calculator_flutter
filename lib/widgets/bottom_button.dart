import 'package:flutter/material.dart';

import '../consts.dart';

class BottomButton extends StatelessWidget {
  final String title;
  final Function onTap;

  const BottomButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        color: kButtonContainerColour,
        margin: const EdgeInsets.only(top: 15.0),
        width: double.infinity,
        height: kButtonContainerHeight,
        child: Center(
          child: Text(
            title,
            style: kLargeButtonStyle,
          ),
        ),
      ),
    );
  }
}
