import 'package:flutter/material.dart';

class ReuseableCo extends StatelessWidget {
  final Color? backgroundC;
  ReuseableCo({
    @required this.backgroundC,
    this.coChild,
  });
  final Widget? coChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: coChild,
      margin: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: backgroundC,
        borderRadius: BorderRadiusDirectional.circular(15),
      ),
    );
  }
}
