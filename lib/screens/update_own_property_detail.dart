import 'package:flutter/material.dart';
import 'package:habitat/screens/home_bottom_navigation.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/utils/utils.dart';
import 'package:habitat/widgets/app_action_button.dart';
import 'package:habitat/widgets/app_action_dialog.dart';
import 'package:habitat/widgets/app_picture.dart';
import 'package:habitat/widgets/app_scaffold.dart';
import 'package:habitat/widgets/app_text.dart';
import 'package:habitat/widgets/app_text_form_field.dart';

class UpdateOwnPropertyDetailsPage extends StatelessWidget {
  const UpdateOwnPropertyDetailsPage({Key key}) : super(key: key);

  Widget _buildTitleContainer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppText(
                    'Seri Mutiara Aprtment',
                    fontSize: 17,
                  ),
                  AppText(
                    'Shah Alam, Selangor',
                    fontSize: 12,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.green,
                      borderRadius: AppBorderRadius.normal,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AppText(
                        'RM750 /m',
                        color: AppColor.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  AppHeightSizedBox.smallBox,
                  AppText(
                    'For Rent',
                    fontSize: 12,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildListOfPhoto(BuildContext context) {
    List images = [
      'https://img.rea-asia.com/my-subsale/premium/750x435-fit/realtors/images/640/13063/41c4a6388d654df1800405daf365f855.jpg',
      'https://dwxbwps5boihg.cloudfront.net/classifiedad/pictures/7614234/IMG_20180727_143156_RtCDdcFC-ESwh3Bxi6xs_small.jpg',
      'https://s3-ap-southeast-1.amazonaws.com/atap-main/gallery-full/00ef7276-c843-44fc-95c9-38060e9c3cee/sky-condo-residence-puchong.jpg',
      'https://s3-ap-southeast-1.amazonaws.com/atap-main/gallery-full/397be144-fb2a-4a4e-87bb-fa943fc5d7e7/1-sky-condominium.jpg',
      'https://s3-ap-southeast-1.amazonaws.com/atap-main/gallery-full/f4f3869b-9322-4e78-93a4-828b68a591c1/dahlia-park-condominium.jpg'
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 75,
        child: ListView.separated(
          separatorBuilder: (context, i) => Padding(
            padding: EdgeInsets.only(right: 12),
          ),
          itemCount: images.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) => AppPicture(
            height: 75,
            width: 75,
            isBorderRadius: false,
            image: images[i],
          ),
        ),
      ),
    );
  }

  Widget _buildPropertyDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: AppText(
              'Property Details',
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          AppTextFormField(
            'Name',
            initialValue: 'Seri Mutiara Aprtment',
          ),
          AppTextFormField(
            'Type',
            initialValue: 'Apartment',
            isDropDown: true,
          ),
          AppTextFormField(
            'Unit No',
            initialValue: 'M06-10-07',
          ),
          AppTextFormField(
            'Address (Line 1)',
            initialValue: 'Jalan Setia Gemiang U13/45b',
          ),
          AppTextFormField(
            'Address (Line 2)',
            initialValue: 'Setia Alam',
            isDropDown: true,
          ),
          AppTextFormField(
            'City',
            initialValue: 'Shah Alam',
          ),
          AppTextFormField(
            'Size (sqft)',
            initialValue: '1250',
          ),
          AppTextFormField(
            'Room(s)',
            initialValue: '4',
            isDropDown: true,
          ),
          AppTextFormField(
            'Toilet(s)',
            initialValue: '2',
            isDropDown: true,
          ),
          AppTextFormField(
            'Balcony',
            initialValue: 'Not Available',
            isDropDown: true,
          ),
          AppTextFormField(
            'Monthly Rental',
            initialValue: 'RM 750.00',
          ),
          AppTextFormField(
            'Bank Instament (Not displayed)',
            initialValue: 'RM 1500.00',
          ),
        ],
      ),
    );
  }

  Widget _buildMainContainer(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppPicture(
            image:
                'https://my2-cdn.pgimgs.com/listing/29895667/UPHO.136616517.V800/Sky-Condominium-Bandar-Puchong-Jaya-Puchong-Malaysia.jpg',
            width: double.infinity,
            isBorderRadius: false,
            height: maxHeight(context) * 0.35,
          ),
          AppHeightSizedBox.smallBox,
          // _buildTitleContainer(context),
          _buildListOfPhoto(context),
          AppHeightSizedBox.smallBox,
          _buildPropertyDetails(context),
          AppHeightSizedBox.smallBox,
          AppActionButton(
            title: 'SAVE DETAILS',
            function: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: AppColor.veryLightGrey,
      appBar: true,
      isElevation: true,
      titleChild: AppText('Update Property Details'),
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
      bottomNavigatorBar: AppActionButton(
        function: () {
          showDialog(
              context: context,
              builder: (context) => AppActionDialog(
                    function: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    title: 'Notification sent!',
                    content:
                        'Your have just sent a notification to your tenant.',
                    cencelText: '',
                    actionText: 'Okay',
                  ));
        },
        title: 'COLLECT RENT',
      ),
      child: _buildMainContainer(context),
    );
  }
}
