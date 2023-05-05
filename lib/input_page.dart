import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:p8_normal/boxAdd.dart';
import 'package:p8_normal/resultes.dart';

import 'GenderCard.dart';
import 'bottom_button.dart';
import 'calculate.dart';
import 'constants.dart';
import 'reuseable_container.dart';

enum gender { girl, boy }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  gender? genderType;
  void setGender(gender) {
    setState(() {
      genderType = gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1D1D2F),
          title: Center(
            child: Text(
              'BMI CALCULAOR',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
              ),
            ),
          ),
        ),
        body: Container(
          // padding: EdgeInsets.all(10),
          color: const Color(0xFF14181F),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReuseableCo(
                        backgroundC: genderType == gender.boy
                            ? kOntapColor
                            : kContainer_COLOR,
                        coChild: GenderCard(
                            handlePress: () => setGender(gender.boy),
                            genderIcon: FontAwesomeIcons.mars,
                            genderKind: 'MALE',
                            genderMarkColor: Colors.orange),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: ReuseableCo(
                              backgroundC: genderType == gender.girl
                                  ? kOntapColor
                                  : kContainer_COLOR,
                              coChild: GenderCard(
                                  handlePress: () => setGender(gender.girl),
                                  genderKind: 'FEMALE',
                                  genderIcon: FontAwesomeIcons.venus,
                                  genderMarkColor: Colors.pink),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ReuseableCo(
                    backgroundC: kContainer_COLOR,
                    coChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: kLapleTextStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text('$height', style: kNumberTextStyle),
                            Text(
                              'cm',
                              style: kLapleTextStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.white,
                              inactiveTrackColor: Color(0xFF8D8E98),
                              thumbColor: Color(0xFFEB1555),
                              overlayColor: Color(0x15EB1555),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30),
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15)),
                          child: Slider(
                              value: height!.toDouble(),
                              max: 250,
                              min: 120,
                              // inactiveColor: Color(0xFF8D8E98),
                              // activeColor: Color(0xFFEB1555),
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.round();
                                });
                              }),
                        )
                      ],
                    )),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReuseableCo(
                        backgroundC: kContainer_COLOR,
                        coChild: BoxInformation(
                            boxNumber: weight, BoxName: 'WEIGHT'),
                      ),
                    ),
                    Expanded(
                      child: ReuseableCo(
                        backgroundC: kContainer_COLOR,
                        coChild: BoxInformation(
                          boxNumber: age,
                          BoxName: 'AGE',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              BottomButton(
                onPress: () {
                  cul = CalculatorBmi(weight: weight, height: height);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Result(
                          BMIdescribe: cul!.getInterpretation(),
                          BMIvalue: cul!.calculate(),
                          BMItext: cul!.getResult()),
                    ),
                  );
                },
                buttonName: 'Calculate',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
