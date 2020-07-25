import 'package:flutter/material.dart';
import 'package:habitat/screens/home_bottom_navigation.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/widgets/app_action_button.dart';
import 'package:habitat/widgets/app_action_dialog.dart';
import 'package:habitat/widgets/app_picture.dart';
import 'package:habitat/widgets/app_scaffold.dart';
import 'package:habitat/widgets/app_text.dart';
import 'package:habitat/widgets/app_text_form_field.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key key}) : super(key: key);

  Widget _buildMainContainer(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: AppBorderRadius.normal,
                color: AppColor.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppPicture(
                      width: 75,
                      height: 75,
                      image:
                          'https://odis.homeaway.com/odis/listing/b5295d7b-ae31-4317-aa1a-c3cda31fd4b7.c10.jpg',
                    ),
                    AppWidthSizedBox.extraSmallBox,
                    Column(
                      children: [
                        AppText('Seri Mutiara Aprtment'),
                        AppText('Shah Alam Selangor'),
                      ],
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColor.green,
                        borderRadius: AppBorderRadius.normal,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: AppText(
                          'View Property',
                          color: AppColor.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AppHeightSizedBox.smallBox,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppText(
                'Rental Details',
                fontWeight: FontWeight.bold,
              ),
            ),
            AppTextFormField(
              'Monthly Rental',
              initialValue: 'RM 750.00',
            ),
            AppTextFormField(
              'Rental Payment',
              initialValue: 'Monthly',
            ),
            AppTextFormField(
              'Bank Name',
              initialValue: 'Maybank',
              isDropDown: true,
            ),
            AppTextFormField(
              'Bank Account',
              initialValue: '1560 1100 8888',
            ),
            AppHeightSizedBox.smallBox,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppText(
                'Rental Details',
                fontWeight: FontWeight.bold,
              ),
            ),
            AppTextFormField(
              'Cardholder Name',
              initialValue: 'Garry J Smith',
            ),
            AppTextFormField(
              'Card Number',
              initialValue: '**** **** **** 8888',
            ),
            Row(
              children: [
                Flexible(
                  child: AppTextFormField(
                    'Expiry Date',
                    initialValue: '08 / 24',
                  ),
                ),
                AppWidthSizedBox.smallBox,
                Flexible(
                  child: AppTextFormField('CVV', initialValue: '***'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      titleChild: AppText('Property'),
      actions: <Widget>[
        Icon(
          Icons.more_vert,
          color: Colors.transparent,
        ),
        Icon(
          Icons.more_vert,
          color: Colors.transparent,
        ),
      ],
      bottomNavigatorBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AppActionButton(
          function: () {
            showDialog(
                context: context,
                builder: (context) => AppActionDialog(
                      function: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeBottomNavigation()),
                            (route) => false);
                      },
                      title: 'Payment Succesful!',
                      content: 'Your payment has been made.',
                      cencelText: '',
                      actionText: 'Okay',
                    ));
          },
          title: 'PAY NOW',
        ),
      ),
      backgroundColor: AppColor.veryLightGrey,
      child: _buildMainContainer(context),
    );
  }
}
