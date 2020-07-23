import 'package:flutter/material.dart';
import 'package:habitat/screens/home_bottom_navigation.dart';

void main() {
  runApp(HabitatApp());
}

class HabitatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habitat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeBottomNavigation(),
    );
  }
}
