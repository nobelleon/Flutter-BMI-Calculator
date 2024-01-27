import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconGender.dart';
import 'mybox.dart';
import 'constants.dart';
import 'resultpage.dart';
import 'brain.dart';

enum Sex {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleBoxColor = kBoxColor;
  Color femaleBoxColor = kBoxColor;
  int height = 180;
  int weight = 70;
  int age = 20;

  void setColor(Sex sex) {
    maleBoxColor = (sex == Sex.male) ? kActiveButton : kInactiveButton;
    femaleBoxColor = (sex == Sex.female) ? kActiveButton : kInactiveButton;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              setColor(Sex.male);
                            });
                          },
                          child: MyBox(
                            boxChild: const IconGender(
                              myIcon: FontAwesomeIcons.mars,
                              sex: 'MALE',
                            ),
                            colour: maleBoxColor,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              setColor(Sex.female);
                            });
                          },
                          child: MyBox(
                            boxChild: const IconGender(
                              myIcon: FontAwesomeIcons.venus,
                              sex: 'FEMALE',
                            ),
                            colour: femaleBoxColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: MyBox(
                  colour: kBoxColor,
                  boxChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(top: 14.0),
                        child: Text(
                          'HEIGHT',
                          style: kBoxTextStyle,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              height.toString(),
                              style: kHeightWeightStyle,
                            ),
                          ),
                          Text(
                            'cm',
                            style: kBoxTextStyle.copyWith(fontSize: 14.0),
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 12.0,
                          ),
                          thumbColor: Colors.purple,
                          overlayShape: const RoundSliderOverlayShape(
                            overlayRadius: 30.0,
                          ),
                          overlayColor: Color(0x29EA1556),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          activeColor: Colors.purple,
                          inactiveColor: const Color(0xFF8E8E99),
                          min: 140.0,
                          max: 250.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.toInt();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: MyBox(
                          colour: kBoxColor,
                          boxChild: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              const Padding(
                                padding: EdgeInsets.only(top: 4.0),
                                child: Text(
                                  'WEIGHT',
                                  style: kBoxTextStyle,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: <Widget>[
                                  Text(
                                    weight.toString(),
                                    style: kHeightWeightStyle,
                                  ),
                                  Text(
                                    'kg',
                                    style:
                                        kBoxTextStyle.copyWith(fontSize: 14.0),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  PlusMinusButton(
                                    icon: FontAwesomeIcons.minus,
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                  ),
                                  PlusMinusButton(
                                    icon: FontAwesomeIcons.plus,
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: MyBox(
                          colour: kBoxColor,
                          boxChild: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              const Padding(
                                padding: EdgeInsets.only(top: 4.0),
                                child: Text(
                                  'AGE',
                                  style: kBoxTextStyle,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: <Widget>[
                                  Text(
                                    age.toString(),
                                    style: kHeightWeightStyle,
                                  ),
                                  Text(
                                    'yrs',
                                    style:
                                        kBoxTextStyle.copyWith(fontSize: 14.0),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  PlusMinusButton(
                                    icon: FontAwesomeIcons.minus,
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                  ),
                                  PlusMinusButton(
                                    icon: FontAwesomeIcons.plus,
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Calculate myBmi = Calculate(height: height, weight: weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              height: height,
                              weight: weight,
                              myBmi: myBmi,
                            )));
              },
              child: Container(
                margin: const EdgeInsets.only(top: 10.0),
                height: 70.0,
                width: double.infinity,
                color: Colors.purple,
                child: const Center(
                  child: Text(
                    'CALCULATE BMI',
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

class PlusMinusButton extends StatelessWidget {
  PlusMinusButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(width: 46.0, height: 46.0),
      elevation: 2.0,
      fillColor: Color(0xFF1D1F33),
    );
  }
}
