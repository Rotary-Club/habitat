import 'package:flutter/material.dart';
import 'package:habitat/screens/issue_details.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/widgets/app_scaffold.dart';
import 'package:habitat/widgets/app_text.dart';

class IssuesPage extends StatelessWidget {
  const IssuesPage({Key key}) : super(key: key);

  Widget _buildMainContainer(BuildContext context) {
    List<Map<String, dynamic>> issues = [
      {
        'title': 'Aircond not working',
        'time': '12 min ago',
      },
      {
        'title': 'No water',
        'time': '39 min ago',
      },
      {
        'title': 'Ghost on my bed',
        'time': '2 hours ago',
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: AppBorderRadius.normal,
          boxShadow: AppBoxShadow.normal,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
          child: ListView.separated(
            separatorBuilder: (context, i) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 6),
              child: Divider(),
            ),
            itemCount: issues.length,
            shrinkWrap: true,
            itemBuilder: (context, i) => InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IssueDetailsPage(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.blue.withOpacity(0.2),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.build,
                          color: AppColor.blue,
                        ),
                      ),
                    ),
                    AppWidthSizedBox.smallBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(issues[i]['title']),
                        AppHeightSizedBox.extraSmallBox,
                        AppText(
                          issues[i]['time'],
                          color: AppColor.grey,
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Icon(Icons.chevron_right),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      isElevation: true,
      backgroundColor: AppColor.veryLightGrey,
      titleChild: AppText('Issues'),
      child: _buildMainContainer(context),
    );
  }
}
