import 'package:flutter/material.dart';
import 'package:habitat/themes/app_theme.dart';

class AppCategoryTag extends StatelessWidget {
  final String text;
  final Color color;
  const AppCategoryTag(
    this.text, {
    this.color,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? Colors.red,
        borderRadius: AppBorderRadius.normal,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
        child: Text(
          text,
          style: TextStyle(
            color: AppTheme.white,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
