import 'package:flutter/material.dart';
import 'constants.dart';
import 'brain.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.height, @required this.weight, @required this.myBmi});
  final int height;
  final int weight;
  final Calculate myBmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'YOUR RESULT',
                style: kHeightWeightStyle.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 35.0,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: kActiveButton,
                  ),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Center(
                          child: Text(
                            myBmi.getCondition(),
                            style: kBoxTextStyle.copyWith(
                              color: Colors.greenAccent,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 2.5,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Center(
                          child: Text(
                            myBmi.getResult(),
                            style: kHeightWeightStyle.copyWith(
                              fontSize: 95.0,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Center(
                          child: Text(
                            'Normal BMI range: \n\n18.5 - 25.0 kg/m2',
                            textAlign: TextAlign.center,
                            style: kBoxTextStyle.copyWith(
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Center(
                          child: Text(
                            myBmi.getInference(),
                            textAlign: TextAlign.center,
                            style: kBoxTextStyle.copyWith(
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: const EdgeInsets.only(top: 10.0),
                height: 70.0,
                width: double.infinity,
                color: Colors.purple,
                child: const Center(
                  child: Text(
                    'RESET',
                    style: kBottomBoxStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
