import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:habitat/models/contract.dart';
import 'package:habitat/utils/utils.dart';
import 'package:habitat/widgets/app_pdf_view.dart';

import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/widgets/app_action_button.dart';
import 'package:habitat/widgets/app_scaffold.dart';
import 'package:habitat/widgets/app_tenant_detail.dart';
import 'package:habitat/widgets/app_text.dart';
import 'package:habitat/widgets/app_text_form_field.dart';
import 'package:intl/intl.dart';

class ContractSummaryPage extends StatefulWidget {
  const ContractSummaryPage({
    @required this.contractJson,
    Key key,
  }) : super(key: key);

  final Map<String, dynamic> contractJson;

  @override
  _ContractSummaryPageState createState() => _ContractSummaryPageState();
}

class _ContractSummaryPageState extends State<ContractSummaryPage> {
  final _formKey = GlobalKey<FormState>();

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
                    Row(
                      children: [
                        Flexible(
                          child: AppTextFormField(
                            'Contract Duration',
                            initialValue:
                                widget.contractJson["duration"].toString() ??
                                    '2',
                            suffixText: 'year(s)',
                            isDigitsOnly: true,
                            onSave: (value) => widget.contractJson["duration"] =
                                int.parse(value),
                          ),
                        ),
                        AppWidthSizedBox.smallBox,
                        Flexible(
                          child: AppTextFormField(
                            'Contract Extension',
                            initialValue:
                                widget.contractJson["extension"].toString() ??
                                    '1',
                            suffixText: 'year(s)',
                            isDigitsOnly: true,
                            onSave: (value) => widget
                                .contractJson["extension"] = int.parse(value),
                          ),
                        ),
                      ],
                    ),
                    AppTextFormField(
                      'Contract Date',
                      initialValue:
                          DateFormat('MMMM d, y').format(DateTime.now()),
                      onSave: (value) => widget.contractJson["startAt"] =
                          DateTime.now().toIso8601String(),
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: AppTextFormField(
                            'Monthly Rental',
                            prefixText: 'RM',
                            isDigitsOnly: true,
                            initialValue:
                                widget.contractJson["rental"].toString() ??
                                    '1500.00',
                            onSave: (value) => widget.contractJson["rental"] =
                                double.parse(value),
                          ),
                        ),
                        AppWidthSizedBox.smallBox,
                        Flexible(
                          child: AppTextFormField(
                            'Security Deposit',
                            initialValue:
                                widget.contractJson["deposit"].toString() ??
                                    '2',
                            suffixText: 'month(s)',
                            isDigitsOnly: true,
                            onSave: (value) => widget.contractJson["deposit"] =
                                double.parse(value),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: AppTextFormField(
                            'Utility Deposit',
                            initialValue:
                                widget.contractJson["utility"].toString() ??
                                    '0.5',
                            suffixText: 'month(s)',
                            isDigitsOnly: true,
                            onSave: (value) => widget.contractJson["utility"] =
                                double.parse(value),
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
                        'Tenant Details',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: AppTextFormField(
                            'Full Name',
                            initialValue: widget.contractJson["tenant"]
                                    ["fullName"] ??
                                'Roberta J Elizabeth',
                            onSave: (value) => widget.contractJson["tenant"]
                                ["fullName"] = value,
                          ),
                        ),
                        AppWidthSizedBox.smallBox,
                        Flexible(
                          child: AppTextFormField(
                            'NRIC',
                            initialValue: widget.contractJson["tenant"]
                                    ["nric"] ??
                                '900101 06 5050',
                            onSave: (value) =>
                                widget.contractJson["tenant"]["nric"] = value,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: AppTextFormField(
                            'Phone No',
                            initialValue: widget.contractJson["tenant"]
                                    ["mobile"] ??
                                '+6 012 3456 789',
                            onSave: (value) =>
                                widget.contractJson["tenant"]["mobile"] = value,
                          ),
                        ),
                        AppWidthSizedBox.smallBox,
                        Flexible(
                          child: AppTextFormField(
                            'Email',
                            initialValue: widget.contractJson["tenant"]
                                    ["email"] ??
                                'rjelizabeth@habitat.com',
                            onSave: (value) =>
                                widget.contractJson["tenant"]["email"] = value,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: AppTextFormField(
                            'Company',
                            initialValue: widget.contractJson["tenant"]
                                    ["company"] ??
                                'Prince Court Hospital',
                            onSave: (value) => widget.contractJson["tenant"]
                                ["company"] = value,
                          ),
                        ),
                        AppWidthSizedBox.smallBox,
                        Flexible(
                          child: AppTextFormField(
                            'Job Position',
                            initialValue: widget.contractJson["tenant"]
                                    ["job"] ??
                                'Gum Specialist',
                            onSave: (value) =>
                                widget.contractJson["tenant"]["job"] = value,
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
                            initialValue: widget.contractJson["tenant"]
                                    ["emergencyContact"]["fullName"] ??
                                'Ahmad Kihong',
                            onSave: (value) => widget.contractJson["tenant"]
                                ["emergencyContact"]["fullName"] = value,
                          ),
                        ),
                        AppWidthSizedBox.smallBox,
                        Flexible(
                          child: AppTextFormField(
                            'Phone No',
                            initialValue: widget.contractJson["tenant"]
                                    ["emergencyContact"]["mobile"] ??
                                '+6 019 876 5432',
                            onSave: (value) => widget.contractJson["tenant"]
                                ["emergencyContact"]["mobile"] = value,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: AppTextFormField(
                            'Email',
                            initialValue: widget.contractJson["tenant"]
                                    ["emergencyContact"]["email"] ??
                                'kihong@habitat.com',
                            onSave: (value) => widget.contractJson["tenant"]
                                ["emergencyContact"]["email"] = value,
                          ),
                        ),
                        AppWidthSizedBox.smallBox,
                        Flexible(
                          child: AppTextFormField(
                            'Relationship',
                            initialValue: widget.contractJson["tenant"]
                                    ["emergencyContact"]["relationship"] ??
                                'Cousin',
                            onSave: (value) => widget.contractJson["tenant"]
                                    ["emergencyContact"]["relationship"] =
                                value.toUpperCase(),
                          ),
                        ),
                      ],
                    ),
                    AppHeightSizedBox.smallBox,
                    AppActionButton(
                      function: () async {
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();
                          JsonEncoder encoder =
                              new JsonEncoder.withIndent('  ');
                          String prettyprint =
                              encoder.convert(widget.contractJson);
                          print({'contractJson': prettyprint});

                          final contract =
                              ContractModel.fromJson(widget.contractJson);
                          final file = await generateContractFile(contract);
                          print({'contract': contract});

                          return Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AppPdfViewer(file),
                            ),
                          );
                        }
                        return null;
                      },
                      title: 'Review & Share',
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
