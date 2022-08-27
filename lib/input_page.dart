import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'consts.dart';
import 'box.dart';
import 'gender_box.dart';

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
  int height = 170;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI calculator'),
        backgroundColor: const Color(0xFF0A0E21),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GenderBox(
                    onPress: () => setState(() {
                      selectedGenre = EGenre.male;
                    }),
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                    colour: selectedGenre == EGenre.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                  ),
                ),
                Expanded(
                  child: GenderBox(
                    onPress: () => setState(() {
                      selectedGenre = EGenre.female;
                    }),
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                    colour: selectedGenre == EGenre.female
                        ? kActiveCardColour
                        : kInactiveCardColour,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Box(
              colour: kActiveCardColour,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      const Text('cm', style: kLabelTextStyle),
                    ],
                  ),
                  Slider(
                    min: 120.0,
                    max: 220.0,
                    value: height.toDouble(),
                    onChanged: (double value) {
                      setState(() {
                        height = value.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Box(
                    colour: kActiveCardColour,
                    child: Container(),
                  ),
                ),
                Expanded(
                  child: Box(
                    colour: kActiveCardColour,
                    child: Container(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kButtonContainerColour,
            margin: const EdgeInsets.only(top: 15.0),
            width: double.infinity,
            height: kButtonContainerHeight,
          )
        ],
      ),
    );
  }
}
