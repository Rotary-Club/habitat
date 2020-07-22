import 'package:flutter/material.dart';

class AppColor {
  static Color white = Colors.white;
  static Color divider = Colors.grey[200];
  static Color placeHolder = Colors.grey;
  static Color darkGrey = Colors.grey[700];
  static Color grey = Colors.grey;
  static Color lightGrey = Colors.grey[200];
  static Color veryLightGrey = Colors.grey[100];
  static Color loading = Colors.grey[400];
  static Color black = Color(0xff151515);
  static Color red = Color(0xffed5f59);
  static Color deepRed = Color(0xffD55550);
  static Color green = Colors.green;
  static Color blueText = Colors.blueAccent;
  static Color blue = Colors.blueAccent;
  static Color yellow = Colors.yellowAccent;
  static Color orange = Colors.orange;
  static Color voucher = lightGrey.withOpacity(0.8);
  static Color background = Color(0xfff1f3f6);
  static Color success = Color(0xff91E268);
  static Color info = Color(0xff0093FC);
  static Color warning = Color(0xffF4C11A);
  static Color error = Color(0xffF96366);
}

class AppBorderRadius {
  static BorderRadiusGeometry small = BorderRadius.circular(4.0);
  static BorderRadiusGeometry normal = BorderRadius.circular(12.0);
  static BorderRadiusGeometry oval =
      BorderRadius.all(Radius.elliptical(100, 100));
}

class AppBoxShadow {
  static const List<BoxShadow> normal = [
    BoxShadow(
      color: Color(0xffe0e0e0),
      blurRadius: 5.0,
      spreadRadius: 2.0,
      offset: Offset(
        0.0,
        3.0,
      ),
    ),
  ];
}

class AppHeightSizedBox {
  static SizedBox doubleExtraSmallBox = SizedBox(height: 4);
  static SizedBox extraSmallBox = SizedBox(height: 8);
  static SizedBox smallBox = SizedBox(height: 16);
  static SizedBox mediumBox = SizedBox(height: 24);
  static SizedBox largeBox = SizedBox(height: 32);
  static SizedBox extraLargeBox = SizedBox(height: 48);
  static SizedBox doubleLargeBox = SizedBox(height: 64);
}

class AppWidthSizedBox {
  static SizedBox doubleExtraSmallBox = SizedBox(width: 4);
  static SizedBox extraSmallBox = SizedBox(width: 8);
  static SizedBox smallBox = SizedBox(width: 16);
  static SizedBox mediumBox = SizedBox(width: 24);
  static SizedBox largeBox = SizedBox(width: 32);
  static SizedBox extraLargeBox = SizedBox(width: 48);
  static SizedBox doubleLargeBox = SizedBox(width: 64);
}

class AppTheme {
  AppTheme._();

  static const Color notWhite = Color(0xFFEDF0F2);
  static const Color nearlyWhite = Color(0xFFFEFEFE);
  static const Color white = Color(0xFFFFFFFF);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color grey = Color(0xFF3A5160);
  static const Color dark_grey = Color(0xFF313A44);

  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color chipBackground = Color(0xFFEEF1F3);
  static const Color spacer = Color(0xFFF2F2F2);
  static const String fontName = 'WorkSans';

  static const TextTheme textTheme = TextTheme(
    headline4: display1,
    headline5: headline,
    headline6: title,
    subtitle2: subtitle,
    bodyText2: body2,
    bodyText1: body1,
    caption: caption,
  );

  static const TextStyle display1 = TextStyle(
    // h4 -> display1
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
    color: darkerText,
  );

  static const TextStyle headline = TextStyle(
    // h5 -> headline
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: darkerText,
  );

  static const TextStyle title = TextStyle(
    // h6 -> title
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
    color: darkerText,
  );

  static const TextStyle subtitle = TextStyle(
    // subtitle2 -> subtitle
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: -0.04,
    color: darkText,
  );

  static const TextStyle body2 = TextStyle(
    // body1 -> body2
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: darkText,
  );

  static const TextStyle body1 = TextStyle(
    // body2 -> body1
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
    color: darkText,
  );

  static const TextStyle caption = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.2,
    color: lightText, // was lightText
  );
}
