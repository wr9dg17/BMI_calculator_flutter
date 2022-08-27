import 'package:flutter/material.dart';
import './input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.white,
          inactiveTrackColor: const Color(0xFF8D8E98),
          trackHeight: 1.0,
          thumbColor: const Color(0xFFEB1555),
          overlayColor: const Color(0x29EB1555),
          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
        ),
      ),
      home: const InputPage(),
    );
  }
}
