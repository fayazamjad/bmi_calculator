import 'package:bmi_calculater/components/reusable_card.dart';
import 'package:flutter/material.dart';

import '../components/bottombutton.dart';
import '../components/reusable_card.dart';
import '../constants.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {Key? key,
      required this.calculatebmi,
      required this.bmiresult,
      required this.interpretation})
      : super(key: key);

  final String calculatebmi;
  final String bmiresult;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 15.0),
              child: const Center(
                child: Text(
                  'Your Result',
                  style: titletextstyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activecardcolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiresult,
                    style: resulttextstyle,
                  ),
                  Text(
                    calculatebmi,
                    style: BMItextstyle,
                  ),
                  Text(
                    interpretation,
                    style: bodytextstyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              onpress: () {},
            ),
          ),
          ButtomButon(
              ontap: () {
                Navigator.pop(context);
              },
              buttontitle: 'Re-Calculate'),
        ],
      )),
    );
  }
}
