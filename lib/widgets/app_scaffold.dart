import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppScaffold extends StatelessWidget {
  final bool appBar;
  final Widget titleChild;
  final Color backgroundColor;
  final Color appBarBackgroundColor;
  final Color backButtonColor;
  final Widget child;
  final Key scaffoldKey;
  final Widget drawer;
  final Widget tabBar;
  final bool isElevation;
  final bool isBackButton;
  final Widget floatingActionButton;
  final Widget actionBar;
  final List<Widget> actions;
  final Widget bottomNavigatorBar;
  final Widget leadingIcon;

  const AppScaffold({
    this.titleChild,
    this.backgroundColor: Colors.white,
    this.child,
    this.appBarBackgroundColor: Colors.white,
    this.backButtonColor: Colors.black,
    this.isElevation: false,
    this.isBackButton: true,
    this.appBar: true,
    this.scaffoldKey,
    this.drawer,
    this.tabBar,
    this.floatingActionButton,
    this.actionBar,
    this.actions,
    this.bottomNavigatorBar,
    this.leadingIcon,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        SystemChannels.textInput.invokeMethod('TextInput.hide');
      },
      child: Scaffold(
        key: scaffoldKey,
        drawer: drawer,
        backgroundColor: backgroundColor,
        bottomNavigationBar: bottomNavigatorBar != null
            ? SafeArea(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  child: bottomNavigatorBar,
                ),
              )
            : null,
        appBar: appBar
            ? AppBar(
                leading: isBackButton ? leadingIcon : Container(),
                backgroundColor: appBarBackgroundColor,
                elevation: isElevation ? 6 : 0,
                title: Center(
                  child: titleChild,
                ),
                iconTheme: IconThemeData(color: backButtonColor),
                actions: <Widget>[
                  actionBar == null
                      ? Container(
                          margin: EdgeInsets.only(right: 8),
                          child: Icon(
                            // For android app bar alignment purpose
                            Icons.ac_unit,
                            color: Colors.transparent,
                          ),
                        )
                      : actionBar,
                  ...(actions != null ? actions : [])
                ],
                bottom: tabBar,
              )
            : null,
        floatingActionButton: floatingActionButton,
        body: child,
      ),
    );
  }
}
