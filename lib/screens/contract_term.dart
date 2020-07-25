import 'package:flutter/material.dart';
import 'package:habitat/screens/contrat_tenant_detail.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/widgets/app_action_button.dart';
import 'package:habitat/widgets/app_scaffold.dart';
import 'package:habitat/widgets/app_tenant_detail.dart';
import 'package:habitat/widgets/app_text.dart';
import 'package:habitat/widgets/app_text_form_field.dart';
import 'package:intl/intl.dart';

class ContractTermPage extends StatefulWidget {
  const ContractTermPage({Key key}) : super(key: key);

  @override
  _ContractTermPageState createState() => _ContractTermPageState();
}

class _ContractTermPageState extends State<ContractTermPage> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, dynamic> contractJson = {
    'duration': 2,
    'startAt': DateTime.now().toIso8601String(),
    'rental': 1500.00,
    'deposit': 2,
    'utility': 0.5,
    'landlord': {
      'fullName': 'Haji Mat Senang',
      'nric': '670909-14-6767',
      'mobile': '(+60) 12 345 6789',
      'email': 'matsenang@habitat.com',
      'company': 'Senang Mart',
      'job': 'Entrepreneur',
      'witnessContact': {
        'fullName': 'Siti Nolah Binti Haji Mat Senang',
        'nric': '920202-14-2222',
        'mobile': '(+60) 12 345 6789',
        'email': 'ctnolah@yahoo.com',
        'relationship': 'DAUGHTER',
      }
    },
    'tenant': {
      'fullName': 'Jonas Kahnwald',
      'nric': 'C01X0897H',
      'mobile': '(+49) 1234 1234',
      'email': 'jonas@sicmundus.com',
      'company': 'Sic Mundus Creatus Est',
      'job': 'Traveller',
      'emergencyContact': {
        'fullName': 'Martha Nielsen',
        'nric': 'D09X0112H',
        'mobile': '(+49) 4321 4321',
        'email': 'martha@gahoo.com',
        'relationship': 'FRIEND',
      },
    },
    'extension': 1,
  };

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
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      'Contract Terms',
                      fontWeight: FontWeight.bold,
                    ),
                    AppTextFormField(
                      'Contract Duration',
                      initialValue: (contractJson["duration"] == null
                              ? null
                              : contractJson["duration"].toString()) ??
                          '1',
                      suffixText: 'year(s)',
                      isDigitsOnly: true,
                      onSave: (value) =>
                          contractJson["duration"] = int.parse(value),
                    ),
                    AppTextFormField(
                      'Contract Extension',
                      initialValue: (contractJson["extension"] == null
                              ? null
                              : contractJson["extension"].toString()) ??
                          '1',
                      suffixText: 'year(s)',
                      isDigitsOnly: true,
                      onSave: (value) =>
                          contractJson["extension"] = int.parse(value),
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: AppTextFormField(
                            'Contract Date',
                            initialValue:
                                DateFormat('MMMM d, y').format(DateTime.now()),
                            onSave: (value) => contractJson["startAt"] =
                                DateTime.now().toIso8601String(),
                          ),
                        ),
                        AppWidthSizedBox.smallBox,
                        Flexible(
                          child: AppTextFormField(
                            'End Date',
                            initialValue: DateFormat('MMMM d, y').format(
                                DateTime.now().add(Duration(days: 365))),
                            onSave: (value) => contractJson["endAt"] =
                                DateTime.now().toIso8601String(),
                          ),
                        ),
                      ],
                    ),
                    AppTextFormField(
                      'Monthly Rental',
                      prefixText: 'RM',
                      isDigitsOnly: true,
                      initialValue: (contractJson["rental"] == null
                              ? null
                              : contractJson["rental"].toString()) ??
                          '1500.00',
                      onSave: (value) =>
                          contractJson["rental"] = double.parse(value),
                    ),
                    AppTextFormField(
                      'Security Deposit',
                      initialValue: (contractJson["deposit"] == null
                              ? null
                              : contractJson["deposit"].toString()) ??
                          '2',
                      suffixText: 'month(s)',
                      isDigitsOnly: true,
                      onSave: (value) =>
                          contractJson["deposit"] = double.parse(value),
                    ),
                    AppTextFormField(
                      'Utility Deposit',
                      initialValue: (contractJson["utility"] == null
                              ? null
                              : contractJson["utility"].toString()) ??
                          '0.5',
                      suffixText: 'month(s)',
                      isDigitsOnly: true,
                      onSave: (value) =>
                          contractJson["utility"] = double.parse(value),
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
                      'Bank Account No',
                      initialValue: '1088 5500 6666',
                    ),
                    AppHeightSizedBox.smallBox,
                    AppActionButton(
                      function: () {
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();
                          print({'contractJson': contractJson});

                          return Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ContractTenantDetailPage(
                                contractJson: contractJson,
                              ),
                            ),
                          );
                        }
                        return null;
                      },
                      title: 'Next',
                      isMaxSize: true,
                    ),
                  ],
                ),
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
