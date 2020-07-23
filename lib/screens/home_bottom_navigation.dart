import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:habitat/screens/home_screen.dart';
import 'package:habitat/screens/People.dart';
import 'package:habitat/screens/issues.dart';
import 'package:habitat/screens/profile.dart';
import 'package:habitat/themes/app_theme.dart';
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
    IssuePage(),
    TenantsPage(),
    ProfilePage(),
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
        selectedItemColor: AppColor.accent,
        selectedIconTheme: IconThemeData(color: AppColor.accent),
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
              Feather.home,
            ),
            title: AppText(
              'Home',
              fontSize: 13,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.book),
            title: AppText('Issues', fontSize: 13),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.heart),
            title: AppText('People', fontSize: 13),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.user),
            title: AppText('Profile', fontSize: 13),
          ),
        ],
      ),
    );
  }
}
