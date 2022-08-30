import 'package:flutter/material.dart';

import '../consts.dart';
import '../widgets/bottom_button.dart';
import '../widgets/box.dart';

class ResultsPage extends StatelessWidget {
  final String result;
  final String resultText;
  final String resultInterpretation;

  const ResultsPage({
    Key? key,
    required this.result,
    required this.resultText,
    required this.resultInterpretation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Box(
              colour: kActiveCardColour,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultsTextStyle,
                  ),
                  Text(
                    result,
                    style: kBMITextStyle,
                  ),
                  Text(
                    resultInterpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            title: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
