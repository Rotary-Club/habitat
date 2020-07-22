import 'package:flutter/material.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/widgets/app_picture.dart';
import 'package:habitat/widgets/app_text.dart';

class AppTenantDetailContainer extends StatelessWidget {
  const AppTenantDetailContainer({Key key}) : super(key: key);

  Widget _buildTenantDetails() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppHeightSizedBox.smallBox,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: AppBoxShadow.normal,
                  borderRadius: AppBorderRadius.normal,
                ),
                child: AppPicture(
                  width: 105,
                  height: 105,
                  image:
                      'https://my2-cdn.pgimgs.com/listing/29895667/UPHO.136616517.V800/Sky-Condominium-Bandar-Puchong-Jaya-Puchong-Malaysia.jpg',
                  fit: BoxFit.cover,
                  isCustomBorderRadius: true,
                  customeBorderRadius: AppBorderRadius.normal,
                ),
              ),
              AppWidthSizedBox.smallBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    'Seri Mutiara Aprtment',
                    fontWeight: FontWeight.bold,
                  ),
                  AppText(
                    'Shah Alam, Selangor',
                    color: AppColor.grey,
                    fontSize: 12,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTenantDetails();
  }
}
