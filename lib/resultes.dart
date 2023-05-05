import 'package:flutter/material.dart';
import 'package:p8_normal/constants.dart';
import 'package:p8_normal/reuseable_container.dart';

import 'bottom_button.dart';

class Result extends StatelessWidget {
  Result(
      {required this.BMIdescribe,
      required this.BMItext,
      required this.BMIvalue});
  String? BMIvalue;
  String? BMItext;
  String? BMIdescribe;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: kContainer_COLOR,
      body: Column(
        children: [
          Expanded(
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 20),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'your result',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCo(
              backgroundC: kOntapColor,
              coChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Center(
                      child: Text(
                        '$BMItext',
                        style:
                            TextStyle(fontSize: 25, color: Colors.lightGreen),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      '$BMIvalue',
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                  ),
                  Text(
                    '$BMIdescribe',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              onPress: () {
                Navigator.pushNamed(context, 'inPutScreen');
              },
              buttonName: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}
