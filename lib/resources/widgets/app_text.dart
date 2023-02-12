import 'package:flutter/material.dart';

import '../styles/app_colors.dart';


class AppText extends StatelessWidget {
  final String text;
  final double fz;
  final FontWeight fw;
  final Color color;
  final int maxLines;
  final double? letterSpacing;
  final double? wordSpacing;
  const AppText({
    super.key,
    required this.text,
    required this.fz,
    this.fw = FontWeight.normal,
    this.color = AppColors.black,
    this.maxLines = 2,
    this.letterSpacing,
    this.wordSpacing
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fz,
        fontWeight: fw,
        color: color,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        height: 1.32
      ),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}