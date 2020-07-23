import 'package:flutter/material.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/widgets/app_action_button.dart';
import 'package:habitat/widgets/app_avatar_container.dart';
import 'package:habitat/widgets/app_scaffold.dart';
import 'package:habitat/widgets/app_tenant_detail.dart';
import 'package:habitat/widgets/app_text.dart';
import 'package:habitat/widgets/app_text_form_field.dart';

class TenantProfilePage extends StatelessWidget {
  const TenantProfilePage({Key key}) : super(key: key);

  Widget _buildTenantDetail(BuildContext context) {
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
            isDropDown: true,
          ),
          AppTextFormField(
            'Job (Optional)',
            initialValue: 'Gum Speciallist',
            isDropDown: true,
          ),
          AppTextFormField(
            'Rental Payment',
            initialValue: 'Monthly',
            isDropDown: true,
          ),
          AppTextFormField(
            'Bank Name',
            initialValue: 'Maybank',
            isDropDown: true,
          ),
          AppTextFormField(
            'Bank Account',
            initialValue: '1560 1100 8888',
            isDropDown: true,
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
          AppTenantDetailContainer(),
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
                'https://img.etimg.com/thumb/msid-69139984,width-1200,height-900,imgsize-220108,overlay-etpanache/photo.jpg',
            email: 'captain@habitat.com',
            name: 'Captain American',
            phoneNo: '(+6) 012 345 6789',
          ),
          _buildTenantDetail(context),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: AppColor.veryLightGrey,
      titleChild: AppText('Tenant Profile'),
      bottomNavigatorBar: AppActionButton(
        function: () {},
        title: 'Save Details',
      ),
      child: _buildMainContainer(context),
    );
  }
}
