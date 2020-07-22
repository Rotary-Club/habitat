import 'package:flutter/material.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/widgets/app_action_button.dart';
import 'package:habitat/widgets/app_picture.dart';
import 'package:habitat/widgets/app_scaffold.dart';
import 'package:habitat/widgets/app_text.dart';

class PropertyDetail extends StatelessWidget {
  const PropertyDetail({Key key}) : super(key: key);

  Widget _buildIcon(IconData icon, String text) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: AppBorderRadius.normal,
              color: AppColor.blue.withOpacity(0.2)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              icon,
              color: AppColor.blue,
            ),
          ),
        ),
        AppHeightSizedBox.doubleExtraSmallBox,
        AppText(text),
      ],
    );
  }

  Widget _buildStickyButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppActionButton(
        title: 'Generate Afreement',
        function: () {},
        color: AppColor.blue,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: false,
      bottomNavigatorBar: _buildStickyButton(),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                AppPicture(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.35,
                  image:
                      'https://my2-cdn.pgimgs.com/listing/29895667/UPHO.136616517.V800/Sky-Condominium-Bandar-Puchong-Jaya-Puchong-Malaysia.jpg',
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.05,
                  left: 26,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: AppBorderRadius.small,
                    ),
                    child: Icon(
                      Icons.chevron_left,
                      size: 28,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.05,
                  right: 26,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: AppBorderRadius.small,
                    ),
                    child: Icon(
                      Icons.star_border,
                      size: 28,
                    ),
                  ),
                ),
                Positioned(
                  left: 26,
                  top: MediaQuery.of(context).size.height * 0.30,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: AppBorderRadius.small,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AppText(
                        'Apartment',
                        color: AppColor.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 26,
                  top: MediaQuery.of(context).size.height * 0.30,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: AppBorderRadius.small,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AppText(
                        'Apartment',
                        color: AppColor.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          'Seri Mutiara Apartment',
                          fontSize: 18,
                        ),
                        AppHeightSizedBox.doubleExtraSmallBox,
                        AppText(
                          'Shah Alam, Selangor',
                          fontSize: 14,
                          color: AppColor.grey,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: AppColor.green,
                            borderRadius: AppBorderRadius.small,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: AppText(
                              'RM1500 /M',
                              color: AppColor.white,
                            ),
                          ),
                        ),
                        AppHeightSizedBox.smallBox,
                        AppText(
                          'For Rent',
                          fontSize: 11,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                height: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AppText('Description'),
            ),
            AppHeightSizedBox.smallBox,
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AppText(
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tmpor invidun ut labore et dolore magna aliquyam eata, sed diam voluptua.',
                letterSpacing: 1.5,
                maxlines: 15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                height: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AppText('Ameities'),
            ),
            AppHeightSizedBox.smallBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildIcon(Icons.wifi, 'Wifi'),
                  _buildIcon(Icons.pool, 'Pool'),
                  _buildIcon(Icons.local_parking, 'Parking'),
                  _buildIcon(Icons.local_drink, 'Bar'),
                  _buildIcon(Icons.tv, 'TV'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                height: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
