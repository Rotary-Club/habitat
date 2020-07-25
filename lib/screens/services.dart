import 'package:flutter/material.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/widgets/app_picture.dart';
import 'package:habitat/widgets/app_scaffold.dart';
import 'package:habitat/widgets/app_text.dart';

class ServicesPage extends StatelessWidget {
  ServicesPage({Key key}) : super(key: key);

  final List<Map<String, dynamic>> services = [
    {
      'image':
          'https://www.airconservicesg.com/wp-content/uploads/2019/09/advantages-of-seeking-for-air-con-services.jpg',
      'title': 'Aircon Services for All!',
      'description': 'Very professional skills inservicing aircond',
    },
    {
      'image': 'https://ifixscreens.com/storage/2018/07/computer-repair.jpg',
      'title': 'Computer services',
      'description': 'No cheating, good skills with a lot of services.',
    },
    {
      'image': 'https://www.bhg.com.au/media/21117/cleaner.jpg',
      'title': 'Cleaner Services!',
      'description':
          'Busy all time and not enought time to cleanr your house? We are providing cleaning service for you!',
    },
    {
      'image':
          'https://www.familyhandyman.com/wp-content/uploads/2017/06/FH11JUN_519_06_025.jpg',
      'title': 'Floor Services!',
      'description': 'Floor broken? Look for us, we provide solutions for you!',
    },
  ];
  Widget _buildServiceCard(BuildContext context, int i) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: AppBorderRadius.normal,
        boxShadow: AppBoxShadow.normal,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppPicture(
            image: services[i]['image'],
            width: double.infinity,
            isCustomBorderRadius: true,
            customeBorderRadius: AppBorderRadius.normal,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppText(
              services[i]['title'],
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppText(
              services[i]['description'],
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainContainer(BuildContext context) {
    return ListView.builder(
      itemCount: services.length,
      itemBuilder: (context, i) => _buildServiceCard(context, i),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      isElevation: true,
      backgroundColor: AppColor.veryLightGrey,
      titleChild: AppText('Services'),
      actions: <Widget>[
        Icon(
          Icons.more_vert,
          color: Colors.transparent,
        ),
        Icon(
          Icons.more_vert,
          color: Colors.transparent,
        ),
      ],
      child: _buildMainContainer(context),
    );
  }
}
