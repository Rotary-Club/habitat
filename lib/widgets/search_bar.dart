import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:habitat/themes/app_theme.dart';

class SearchBar extends StatelessWidget {
  final Function onChanged;
  final String hintText;
  final TextEditingController searchController;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final FocusNode searchFocus;
  final Color backgroundColor;
  final Color searBarBackgroundColor;
  final Color fontColor;
  final Color borderColor;

  SearchBar({
    Key key,
    @required this.onChanged,
    this.hintText = 'Search here...',
    this.searchFocus,
    this.searchController,
    this.margin = const EdgeInsets.all(7),
    this.padding,
    this.backgroundColor,
    this.searBarBackgroundColor,
    this.fontColor = AppColor.black,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Container(
        margin: margin,
        padding: padding,
        height: 40,
        decoration: BoxDecoration(
          color: searBarBackgroundColor ?? AppColor.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: TextField(
          controller: searchController,
          onChanged: onChanged,
          style: TextStyle(
            color: fontColor,
          ),
          focusNode: searchFocus == null ? null : searchFocus,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: borderColor ?? Colors.transparent, width: 0.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColor.accent, width: 1.5),
              borderRadius: AppBorderRadius.normal,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: TextStyle(
              color: fontColor.withOpacity(0.3),
            ),
            contentPadding: EdgeInsets.all(4),
            prefixIcon: Icon(
              Feather.search,
              color: fontColor ?? AppColor.black,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(color: AppColor.divider),
            ),
            suffixIcon: searchController == null || !searchFocus.hasFocus
                ? null
                : IconButton(
                    padding: const EdgeInsets.all(0.0),
                    icon: Icon(
                      Feather.x,
                      color: AppColor.divider,
                    ),
                    onPressed: () {
                      searchController.clear();
                      searchFocus.unfocus();
                    },
                  ),
          ),
        ),
      ),
    );
  }
}
