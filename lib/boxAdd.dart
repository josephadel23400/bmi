import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'round_card.dart';

class BoxInformation extends StatefulWidget {
  @override
  String? BoxName;
  int? boxNumber;
  BoxInformation({this.BoxName, required this.boxNumber}) {}
  State<BoxInformation> createState() => _BoxInformationState();
}

class _BoxInformationState extends State<BoxInformation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.BoxName!,
          style: kLapleTextStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          widget.boxNumber.toString(),
          style: kNumberTextStyle,
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundCard(
                handelPress: () {
                  setState(() {
                    widget.boxNumber = widget.boxNumber! - 1;
                  });
                },
                iconData: FontAwesomeIcons.minus),
            SizedBox(
              width: 20,
            ),
            RoundCard(
                handelPress: () {
                  setState(() {
                    widget.boxNumber = widget.boxNumber! + 1;
                  });
                },
                iconData: FontAwesomeIcons.plus),
          ],
        )
      ],
    );
  }
}
