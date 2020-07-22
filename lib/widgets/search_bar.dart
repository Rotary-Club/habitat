import 'package:flutter/material.dart';
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
    this.margin,
    this.padding,
    this.backgroundColor,
    this.searBarBackgroundColor,
    this.fontColor,
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
            color: fontColor ?? AppColor.black,
          ),
          focusNode: searchFocus == null ? null : searchFocus,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: borderColor ?? Colors.transparent, width: 0.0),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: TextStyle(
              color: fontColor ?? AppColor.black,
            ),
            contentPadding: EdgeInsets.all(4),
            prefixIcon: Icon(
              Icons.search,
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
                      Icons.cancel,
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
