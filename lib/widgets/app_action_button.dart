import 'package:flutter/material.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/utils/utils.dart';

class AppActionButton extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry margin;
  final Color color;
  final Color fontColor;
  final double fontSize;
  final bool isMaxSize;
  final Function function;
  const AppActionButton({
    @required this.title,
    @required this.function,
    this.margin,
    this.fontColor: Colors.white,
    this.color,
    this.isMaxSize: false,
    this.fontSize: 18,
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isMaxSize ? maxWidth(context) : null,
      child: RaisedButton(
        color: AppColor.blue,
        onPressed: function,
        child: Container(
          margin: margin ?? EdgeInsets.symmetric(vertical: 14),
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
              color: fontColor,
            ),
          ),
        ),
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
    );
  }
}
