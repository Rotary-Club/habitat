import 'package:flutter/material.dart';
import 'package:habitat/screens/home_screen.dart';
import 'package:habitat/widgets/app_text.dart';

class HomeBottomNavigation extends StatefulWidget {
  static const routeName = '/home-bottom-navigation';
  final int i;

  HomeBottomNavigation({Key key, this.i: 0}) : super(key: key);

  _HomeSetUpState createState() => _HomeSetUpState();
}

class _HomeSetUpState extends State<HomeBottomNavigation> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _index = 0;

  List<Widget> widgetList = [
    MyHomePage(),
    MyHomePage(),
    MyHomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: IndexedStack(
        index: _index,
        children: widgetList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        selectedIconTheme: IconThemeData(color: Colors.red),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        elevation: 12,
        currentIndex: _index,
        onTap: (value) {
          setState(
            () {
              _index = value;
            },
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: AppText(
              'Home',
              fontSize: 13,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: AppText('Reports', fontSize: 13),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: AppText('Profile', fontSize: 13),
          ),
        ],
      ),
    );
  }
}
