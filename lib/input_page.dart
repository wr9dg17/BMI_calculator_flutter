import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: Box(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: Box(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
              ],
            )
          ),
          const Expanded(
            child: Box(
              colour: Colors.blue,
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: Box(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: Box(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}

class Box extends StatelessWidget {
  final Color colour;

  const Box({ Key? key, required this.colour }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0)
      ),
      margin: const EdgeInsets.all(15.0),
    );
  }
}
