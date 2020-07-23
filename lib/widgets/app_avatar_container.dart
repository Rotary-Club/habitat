import 'package:flutter/material.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/util/utils.dart';
import 'package:habitat/widgets/app_picture.dart';
import 'package:habitat/widgets/app_text.dart';

class AppAvatarContainer extends StatelessWidget {
  final String image;
  final String name;
  final String email;
  final String phoneNo;
  const AppAvatarContainer(
      {@required this.image,
      @required this.name,
      @required this.email,
      @required this.phoneNo,
      Key key})
      : super(key: key);

  Widget _buildAvatarContainer(BuildContext context) {
    return Container(
      height: maxHeight(context) * 0.3,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Column(
        children: [
          AppHeightSizedBox.mediumBox,
          Container(
            width: 105,
            height: 105,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.green,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: AppPicture(
                  image: image,
                  isCustomBorderRadius: true,
                  customeBorderRadius: AppBorderRadius.oval,
                ),
              ),
            ),
          ),
          AppHeightSizedBox.smallBox,
          AppText(
            AutofillHints.creditCardFamilyName,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          AppText(email),
          AppText(phoneNo),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildAvatarContainer(context);
  }
}
