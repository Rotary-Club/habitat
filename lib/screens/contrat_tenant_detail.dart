import 'package:flutter/material.dart';
import 'package:habitat/screens/contract_summary.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/widgets/app_action_button.dart';
import 'package:habitat/widgets/app_scaffold.dart';
import 'package:habitat/widgets/app_tenant_detail.dart';
import 'package:habitat/widgets/app_text.dart';
import 'package:habitat/widgets/app_text_form_field.dart';

class ContractTenantDetailPage extends StatelessWidget {
  const ContractTenantDetailPage({Key key}) : super(key: key);

  Widget _buildMainContainer(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppTenantDetailContainer(),
          AppHeightSizedBox.mediumBox,
          Container(
            width: double.infinity,
            child: Padding(
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
                    initialValue: 'Roberta J Elizabeth',
                  ),
                  AppTextFormField(
                    'NRIC',
                    initialValue: '900101 06 5050',
                  ),
                  AppTextFormField(
                    'Phone No',
                    initialValue: '+6 012 3456 6789',
                  ),
                  AppTextFormField(
                    'Email',
                    initialValue: 'rjelizabeth@habitat.com',
                  ),
                  AppTextFormField(
                    'Company (Optional)',
                    initialValue: 'Prince Court Medical Centre',
                    isDropDown: true,
                  ),
                  AppTextFormField(
                    'Job Position (Optional)',
                    initialValue: 'Gum Specialist',
                    isDropDown: true,
                  ),
                  AppHeightSizedBox.smallBox,
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: AppText(
                      'Emergency Contact',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  AppTextFormField(
                    'Full Name',
                    initialValue: 'Ahmad Kihong',
                  ),
                  AppTextFormField(
                    'Phone No',
                    initialValue: '+6 019 876 5432',
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
                  AppHeightSizedBox.smallBox,
                  AppActionButton(
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContractSummaryPage(),
                        ),
                      );
                    },
                    title: 'Review',
                    isMaxSize: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      titleChild: AppText('Generate Agreement'),
      child: _buildMainContainer(context),
    );
  }
}
