import 'package:flutter/material.dart';
import 'package:habitat/screens/contrat_tenant_detail.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/widgets/app_action_button.dart';
import 'package:habitat/widgets/app_picture.dart';
import 'package:habitat/widgets/app_scaffold.dart';
import 'package:habitat/widgets/app_tenant_detail.dart';
import 'package:habitat/widgets/app_text.dart';
import 'package:habitat/widgets/app_text_form_field.dart';

class ContractTermPage extends StatelessWidget {
  const ContractTermPage({Key key}) : super(key: key);

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
                    'Contract Details',
                    fontWeight: FontWeight.bold,
                  ),
                  AppTextFormField(
                    'Rentail Duration',
                    initialValue: '2 Years',
                    isDropDown: true,
                  ),
                  AppTextFormField(
                    'Optional Extension',
                    initialValue: '1 Year',
                    isDropDown: true,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: AppTextFormField(
                          'Start Date',
                          initialValue: 'July 25, 2020',
                        ),
                      ),
                      AppWidthSizedBox.smallBox,
                      Flexible(
                        child: AppTextFormField(
                          'End Date',
                          initialValue: 'July 25, 2021',
                        ),
                      ),
                    ],
                  ),
                  AppTextFormField(
                    'Monthly Rental',
                    initialValue: 'RM 1,500.00',
                  ),
                  AppTextFormField(
                    'Security Deposit',
                    initialValue: '2 months',
                    isDropDown: true,
                  ),
                  AppTextFormField(
                    'Utility Deposit',
                    initialValue: '2 months',
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
                  AppHeightSizedBox.smallBox,
                  AppActionButton(
                    function: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContractTenantDetailPage(),
                      ),
                    ),
                    title: 'Next',
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
