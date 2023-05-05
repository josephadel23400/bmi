import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onPress, required this.buttonName});
  final Function() onPress;
  String? buttonName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kBotton_hight,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFEB1555)),
        onPressed: onPress,
        child: Text(
          '$buttonName',
        ),
      ),
    );
  }
}
