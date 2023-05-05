import 'package:flutter/material.dart';

import 'constants.dart';

class GenderCard extends StatelessWidget {
  Color? genderMarkColor = Colors.white;
  IconData genderIcon;
  final String? genderKind;
  Function handlePress;
  GenderCard(
      {this.genderMarkColor,
      required this.handlePress,
      required this.genderIcon,
      required this.genderKind});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => handlePress(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            genderIcon,
            color: genderMarkColor,
            size: 80,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '${genderKind}',
            style: kLapleTextStyle,
          )
        ],
      ),
    );
  }
}
