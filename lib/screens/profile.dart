import 'package:flutter/material.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/widgets/app_action_button.dart';
import 'package:habitat/widgets/app_avatar_container.dart';
import 'package:habitat/widgets/app_scaffold.dart';
import 'package:habitat/widgets/app_text.dart';
import 'package:habitat/widgets/app_text_form_field.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  Widget _buildProfileDetail(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            'Tenant Details',
            fontWeight: FontWeight.bold,
          ),
          AppTextFormField(
            'Full Name',
            initialValue: 'Captain American',
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
            initialValue: 'Prince Court Hospital',
          ),
          AppTextFormField(
            'Job (Optional)',
            initialValue: 'Gum Speciallist',
          ),
          AppTextFormField(
            'Rental Payment',
            initialValue: 'Monthly',
          ),
          AppTextFormField(
            'Bank Name',
            initialValue: 'Maybank',
          ),
          AppTextFormField(
            'Bank Account',
            initialValue: '1560 1100 8888',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: AppText('Emergency Contact'),
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
          AppHeightSizedBox.mediumBox,
          AppActionButton(
            function: () {},
            title: 'SAVE DETAILS',
            isMaxSize: true,
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
                'https://my2-cdn.pgimgs.com/listing/29895667/UPHO.136616517.V800/Sky-Condominium-Bandar-Puchong-Jaya-Puchong-Malaysia.jpg',
            name: 'JJ Lin',
            email: 'JJLIN@habitat.com',
            phoneNo: '(+6) 012 345 6789',
          ),
          _buildProfileDetail(context),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: AppColor.veryLightGrey,
      titleChild: AppText('Profile'),
      child: _buildMainContainer(context),
    );
  }
}
