import 'package:flutter/material.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/widgets/app_action_button.dart';
import 'package:habitat/widgets/app_action_dialog.dart';
import 'package:habitat/widgets/app_scaffold.dart';
import 'package:habitat/widgets/app_tenant_detail.dart';
import 'package:habitat/widgets/app_text.dart';
import 'package:habitat/widgets/app_text_form_field.dart';

class ContractSummaryPage extends StatelessWidget {
  const ContractSummaryPage({Key key}) : super(key: key);
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
                    'Contract Terms',
                    fontWeight: FontWeight.bold,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: AppTextFormField(
                          'Contract Duration',
                          initialValue: '1 Year',
                        ),
                      ),
                      AppWidthSizedBox.smallBox,
                      Flexible(
                        child: AppTextFormField(
                          'Contract Extension',
                          initialValue: '1 Year',
                        ),
                      ),
                    ],
                  ),
                  AppTextFormField(
                    'Contract Date',
                    initialValue: 'July 25, 2020 - July, 2021',
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: AppTextFormField(
                          'Monthly Rental',
                          initialValue: 'RM 1,500.00',
                        ),
                      ),
                      AppWidthSizedBox.smallBox,
                      Flexible(
                        child: AppTextFormField(
                          'Security Deposit',
                          initialValue: '2 months',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: AppTextFormField(
                          'Utility Deposit',
                          initialValue: '0.5 month',
                        ),
                      ),
                      AppWidthSizedBox.smallBox,
                      Flexible(
                        child: AppTextFormField(
                          'Total Payment',
                          initialValue: 'RM 5,250.00',
                        ),
                      ),
                    ],
                  ),
                  AppTextFormField(
                    'Rental Payment',
                    initialValue: 'Before 7th of every month',
                  ),
                  AppTextFormField(
                    'Payment To',
                    initialValue: 'Malayan Banking Berhad  1560 1100 8888',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: AppText(
                      'tenant Details',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: AppTextFormField(
                          'Full Name',
                          initialValue: 'Roberta J Elizabeth',
                        ),
                      ),
                      AppWidthSizedBox.smallBox,
                      Flexible(
                        child: AppTextFormField(
                          'NRIC',
                          initialValue: '900101 06 5050',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: AppTextFormField(
                          'Phone No',
                          initialValue: '+6 012 3456 789',
                        ),
                      ),
                      AppWidthSizedBox.smallBox,
                      Flexible(
                        child: AppTextFormField(
                          'Email',
                          initialValue: 'rjelizabeth@habitat.com',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: AppTextFormField(
                          'Company',
                          initialValue: 'Prince Court Hospital',
                        ),
                      ),
                      AppWidthSizedBox.smallBox,
                      Flexible(
                        child: AppTextFormField(
                          'Job Position',
                          initialValue: 'Gum Specialist',
                        ),
                      ),
                    ],
                  ),
                  AppHeightSizedBox.smallBox,
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: AppText(
                      'Emergency Contact',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: AppTextFormField(
                          'Full Name',
                          initialValue: 'Ahmad Kihong',
                        ),
                      ),
                      AppWidthSizedBox.smallBox,
                      Flexible(
                        child: AppTextFormField(
                          'Phone No',
                          initialValue: '+6 019 876 5432',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: AppTextFormField(
                          'Email',
                          initialValue: 'kihong@habitat.com',
                        ),
                      ),
                      AppWidthSizedBox.smallBox,
                      Flexible(
                        child: AppTextFormField(
                          'Relationship',
                          initialValue: 'Cousin',
                        ),
                      ),
                    ],
                  ),
                  AppHeightSizedBox.smallBox,
                  AppActionButton(
                    function: () {
                      showDialog(
                        context: context,
                        builder: (context) => AppActionDialog(
                          title: 'Confirm Email?',
                          content:
                              'Tenant: rjelizabeth@habitat.com \nLanlord: Kimjongun@habitat.com',
                          actionText: 'Send',
                          function: () {
                            Navigator.of(context).pop(true);
                          },
                        ),
                      );
                    },
                    title: 'Review & Share',
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
