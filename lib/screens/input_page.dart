import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../consts.dart';
import '../calculator.dart';
import '../widgets/box.dart';
import '../widgets/bottom_button.dart';
import '../widgets/gender_box.dart';
import '../widgets/round_circle_button.dart';

import './results_page.dart';

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
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI calculator'),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundCircleButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () => setState(() {
                                weight--;
                              }),
                            ),
                            const SizedBox(width: 10.0),
                            RoundCircleButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () => setState(() {
                                weight++;
                              }),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Box(
                    colour: kActiveCardColour,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundCircleButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () => setState(() {
                                age--;
                              }),
                            ),
                            const SizedBox(width: 10.0),
                            RoundCircleButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () => setState(() {
                                age++;
                              }),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            title: 'CALCULATE',
            onTap: () {
              Calculator calc = Calculator(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    result: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    resultInterpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
