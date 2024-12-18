import 'package:flutter/material.dart';

class StyledBodyText extends StatelessWidget {
  const StyledBodyText(this.fonstSize, this.fontWeight,{required this.text, this.color,super.key});

  final String text;
  final double fonstSize;
  final Color? color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fonstSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
