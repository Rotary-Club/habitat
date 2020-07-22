import 'package:flutter/material.dart';

class AppColor {
  AppColor._();

  static const Color accent = Color(0xFFC25E88);
  static const Color white = Colors.white;
  static const Color divider = Color(0xFFEEEEEE);
  static const Color placeHolder = Colors.grey;
  static const Color darkGrey = Color(0xFF616161);
  static const Color grey = Color(0xFF9E9E9E);
  static const Color lightGrey = Color(0xFFEEEEEE);
  static const Color veryLightGrey = Color(0xFFF5F5F5);
  static const Color loading = Color(0xFFBDBDBD);
  static const Color black = Color(0xff151515);
  static const Color red = Color(0xffed5f59);
  static const Color deepRed = Color(0xffD55550);
  static const Color green = Color(0xFF00867E);
  static const Color blueText = Colors.blueAccent;
  static const Color blue = Color(0xFF0081CE);
  static const Color yellow = Colors.yellowAccent;
  static const Color orange = Colors.orange;
  static const Color background = Color(0xfff1f3f6);
  static const Color success = Color(0xff91E268);
  static const Color info = Color(0xff0093FC);
  static const Color warning = Color(0xffF4C11A);
  static const Color error = Color(0xffF96366);
}

class AppBorderRadius {
  static BorderRadiusGeometry small = BorderRadius.circular(4.0);
  static BorderRadiusGeometry normal = BorderRadius.circular(12.0);
  static BorderRadiusGeometry picture = BorderRadius.circular(22.0);
  static BorderRadiusGeometry oval =
      BorderRadius.all(Radius.elliptical(100, 100));
}

class AppBoxShadow {
  static List<BoxShadow> normal = [
    BoxShadow(
      color: AppColor.grey.withOpacity(0.1),
      offset: const Offset(1.1, 1.1),
      blurRadius: 30.0,
      spreadRadius: 2.0,
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
