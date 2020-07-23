import 'package:flutter/material.dart';
import 'package:habitat/screens/contract_summary.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/widgets/app_action_button.dart';
import 'package:habitat/widgets/app_scaffold.dart';
import 'package:habitat/widgets/app_tenant_detail.dart';
import 'package:habitat/widgets/app_text.dart';
import 'package:habitat/widgets/app_text_form_field.dart';

class ContractTenantDetailPage extends StatefulWidget {
  const ContractTenantDetailPage({
    @required this.contractJson,
    Key key,
  }) : super(key: key);

  final Map<String, dynamic> contractJson;

  @override
  _ContractTenantDetailPageState createState() =>
      _ContractTenantDetailPageState();
}

class _ContractTenantDetailPageState extends State<ContractTenantDetailPage> {
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
                      'Tenant Details',
                      fontWeight: FontWeight.bold,
                    ),
                    AppTextFormField(
                      'Full Name',
                      initialValue: widget.contractJson["tenant"]["fullName"],
                      onSave: (value) =>
                          widget.contractJson["tenant"]["fullName"] = value,
                    ),
                    AppTextFormField(
                      'NRIC',
                      initialValue: widget.contractJson["tenant"]["nric"],
                      onSave: (value) =>
                          widget.contractJson["tenant"]["nric"] = value,
                    ),
                    AppTextFormField(
                      'Phone No',
                      initialValue: widget.contractJson["tenant"]["mobile"],
                      onSave: (value) =>
                          widget.contractJson["tenant"]["mobile"] = value,
                    ),
                    AppTextFormField(
                      'Email',
                      initialValue: widget.contractJson["tenant"]["email"],
                      onSave: (value) =>
                          widget.contractJson["tenant"]["email"] = value,
                    ),
                    AppTextFormField(
                      'Company (Optional)',
                      initialValue: widget.contractJson["tenant"]["company"],
                      onSave: (value) =>
                          widget.contractJson["tenant"]["company"] = value,
                    ),
                    AppTextFormField(
                      'Job Position (Optional)',
                      initialValue: widget.contractJson["tenant"]["job"],
                      onSave: (value) =>
                          widget.contractJson["tenant"]["job"] = value,
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
                      initialValue: widget.contractJson["tenant"]
                          ["emergencyContact"]["fullName"],
                      onSave: (value) => widget.contractJson["tenant"]
                          ["emergencyContact"]["fullName"] = value,
                    ),
                    AppTextFormField(
                      'Phone No',
                      initialValue: widget.contractJson["tenant"]
                          ["emergencyContact"]["mobile"],
                      onSave: (value) => widget.contractJson["tenant"]
                          ["emergencyContact"]["mobile"] = value,
                    ),
                    AppTextFormField(
                      'Email',
                      initialValue: widget.contractJson["tenant"]
                          ["emergencyContact"]["email"],
                      onSave: (value) => widget.contractJson["tenant"]
                          ["emergencyContact"]["email"] = value,
                    ),
                    AppTextFormField(
                      'Relationship',
                      initialValue: widget.contractJson["tenant"]
                          ["emergencyContact"]["relationship"],
                      onSave: (value) => widget.contractJson["tenant"]
                              ["emergencyContact"]["relationship"] =
                          value.toUpperCase(),
                    ),
                    AppHeightSizedBox.smallBox,
                    AppActionButton(
                      function: () {
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();
                          print({'contractJson': widget.contractJson});
                          return Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ContractSummaryPage(
                                contractJson: widget.contractJson,
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
