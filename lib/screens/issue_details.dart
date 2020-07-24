import 'package:flutter/material.dart';
import 'package:habitat/screens/services.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/widgets/app_action_button.dart';
import 'package:habitat/widgets/app_picture.dart';
import 'package:habitat/widgets/app_scaffold.dart';
import 'package:habitat/widgets/app_text.dart';

class IssueDetailsPage extends StatelessWidget {
  const IssueDetailsPage({Key key}) : super(key: key);

  Widget _buildMainContainer(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppPicture(
          image:
              'https://www.billyaircon.com.sg/wp-content/uploads/2018/05/chemical-aircon-wash-6.10.17-Assemble-Fan-Coil-Motor-Cabinet-Electric-Box.jpeg',
          width: double.infinity,
          isBorderRadius: false,
        ),
        AppHeightSizedBox.smallBox,
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: AppText(
            'Reports',
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: AppText(
            'The aircond is not cooling at all, sometimes hot sometimes cool, sometimes auto off. I cannot tahan this anymore, please help me to change a good one. Thanks owner.',
            letterSpacing: 1.5,
            maxlines: 5,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      titleChild: AppText('Issue Details'),
      isElevation: true,
      bottomNavigatorBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: AppActionButton(
          function: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ServicesPage(),
            ),
          ),
          title: 'Select A Service For Tenant',
          isMaxSize: true,
        ),
      ),
      child: _buildMainContainer(context),
    );
  }
}
