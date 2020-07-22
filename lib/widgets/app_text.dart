import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final String fontFamily;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final int maxlines;
  final FontStyle fontStype;
  final bool underline;
  final bool isStrikeThrough;
  final double letterSpacing;

  const AppText(
    this.text, {
    this.fontFamily,
    this.fontSize,
    this.fontWeight,
    this.color: Colors.black,
    this.fontStype,
    this.textAlign,
    this.overflow: TextOverflow.ellipsis,
    this.maxlines: 3,
    this.underline: false,
    this.letterSpacing,
    this.isStrikeThrough: false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? 'empty',
      overflow: overflow,
      maxLines: maxlines,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStype,
        fontFamily: fontFamily,
        letterSpacing: letterSpacing,
        decoration: underline
            ? TextDecoration.underline
            : isStrikeThrough ? TextDecoration.lineThrough : null,
      ),
    );
  }
}
