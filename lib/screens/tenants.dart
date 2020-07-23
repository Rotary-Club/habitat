import 'package:flutter/material.dart';
import 'package:habitat/screens/tenant_profile.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/widgets/app_action_button.dart';
import 'package:habitat/widgets/app_picture.dart';
import 'package:habitat/widgets/app_scaffold.dart';
import 'package:habitat/widgets/app_text.dart';

class TenantsPage extends StatelessWidget {
  const TenantsPage({Key key}) : super(key: key);

  Widget _buildTenantDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
      child: InkWell(
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => TenantProfilePage())),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: AppBoxShadow.normal,
            borderRadius: AppBorderRadius.normal,
            color: AppColor.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                            'https://img.etimg.com/thumb/msid-69139984,width-1200,height-900,imgsize-220108,overlay-etpanache/photo.jpg',
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
                          'Captain American',
                          fontWeight: FontWeight.bold,
                        ),
                        AppText(
                          '+6012 345 6789',
                          color: AppColor.grey,
                          fontSize: 12,
                        ),
                        AppText(
                          'habitat@habitat.com.my',
                          color: AppColor.grey,
                          fontSize: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 16),
                              decoration: BoxDecoration(
                                color: AppColor.green,
                                borderRadius: AppBorderRadius.small,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: AppText(
                                  'View Profile',
                                  color: AppColor.white,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                            AppWidthSizedBox.doubleLargeBox,
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  AppText('Rented'),
                                  Icon(
                                    Icons.notification_important,
                                    color: AppColor.red,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMainContainer(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, i) => _buildTenantDetails(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: true,
      isBackButton: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      titleChild: AppText('Tenants'),
      child: _buildMainContainer(context),
    );
  }
}
