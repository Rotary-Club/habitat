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
                    'Contract Terms',
                    fontWeight: FontWeight.bold,
                  ),
                  AppTextFormField(
                    'Contract Duration',
                    initialValue: '1 Year',
                  ),
                  AppTextFormField(
                    'Contract Extensino',
                    initialValue: '1 Year',
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
                  ),
                  AppTextFormField(
                    'Utility Deposit',
                    initialValue: '0.5 month',
                  ),
                  AppTextFormField(
                    'Rental Payment',
                    initialValue: 'Before 7th of every month',
                  ),
                  AppTextFormField(
                    'Bank Name',
                    initialValue: 'Malayan Banking Berhad',
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
