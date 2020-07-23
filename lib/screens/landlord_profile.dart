import 'package:flutter/material.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/widgets/app_action_button.dart';
import 'package:habitat/widgets/app_avatar_container.dart';
import 'package:habitat/widgets/app_scaffold.dart';
import 'package:habitat/widgets/app_text.dart';
import 'package:habitat/widgets/app_text_form_field.dart';

class LandlordProfile extends StatelessWidget {
  const LandlordProfile({Key key}) : super(key: key);

  Widget _buildLandlordDetail(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            'Landlord Details',
            fontWeight: FontWeight.bold,
          ),
          AppTextFormField(
            'Full Name',
            initialValue: 'KLCC MANAGment',
          ),
          AppTextFormField(
            'NRIC',
            initialValue: '900101 06 5050',
          ),
          AppTextFormField(
            'Phone No',
            initialValue: '(+6) 012 345 6789',
          ),
          AppTextFormField(
            'Email',
            initialValue: 'captain@habitat.com',
          ),
          AppTextFormField(
            'Company (Optional)',
            initialValue: 'KLCC Sdn Bhd',
            isDropDown: true,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: AppText('Contact Person'),
          ),
          AppTextFormField(
            'Full name',
            initialValue: 'Ki Hong',
          ),
          AppTextFormField(
            'NRIC',
            initialValue: '900101 06 5050',
          ),
          AppTextFormField(
            'Email',
            initialValue: 'kihong@habitat.com',
          ),
          AppTextFormField(
            'Relationship',
            initialValue: 'Cousin',
            isDropDown: true,
          ),
        ],
      ),
    );
  }

  Widget _buildMainContainer(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppAvatarContainer(
            image:
                'https://s3-ap-southeast-1.amazonaws.com/atap-main/profile-m-plain/60273ee5-07ca-40db-b0ba-cd45fb6957ad/ioipropertiesgroupberhad.jpg',
            name: 'IOI Properties',
            phoneNo: '(+6) 012 345 6789',
            email: 'ioi_properties2habitat.com',
          ),
          _buildLandlordDetail(context),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: AppColor.veryLightGrey,
      titleChild: AppText('Landlord Details'),
      bottomNavigatorBar: AppActionButton(
        function: () {},
        title: 'SAVE DETAILS',
      ),
      child: _buildMainContainer(context),
    );
  }
}
