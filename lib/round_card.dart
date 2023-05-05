import 'package:flutter/material.dart';

class RoundCard extends StatelessWidget {
  IconData? iconData;

  RoundCard({
    this.iconData,
    required this.handelPress,
  });
  void Function() handelPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0,
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(width: 50, height: 50),
      shape: CircleBorder(),
      onPressed: handelPress,
      child: Icon(iconData),
    );
  }
}
