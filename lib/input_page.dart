import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'box.dart';
import 'gender_box.dart';

const buttonContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const buttonContainerColour = Color(0xFFEB1555);

enum EGenre {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  EGenre? selectedGenre;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI calculator'),
        backgroundColor: const Color(0xFF0A0E21),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGenre = EGenre.male;
                      });
                    },
                    child: GenderBox(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                      colour: selectedGenre == EGenre.male
                          ? activeCardColour
                          : inactiveCardColour,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGenre = EGenre.female;
                      });
                    },
                    child: GenderBox(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                      colour: selectedGenre == EGenre.female
                          ? activeCardColour
                          : inactiveCardColour,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Box(
              colour: activeCardColour,
              child: Container(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Box(
                    colour: activeCardColour,
                    child: Container(),
                  ),
                ),
                const Expanded(
                  child: Box(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: buttonContainerColour,
            margin: const EdgeInsets.only(top: 15.0),
            width: double.infinity,
            height: buttonContainerHeight,
          )
        ],
      ),
    );
  }
}
