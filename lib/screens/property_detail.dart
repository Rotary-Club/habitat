import 'package:flutter/material.dart';
import 'package:habitat/screens/contract_term.dart';
import 'package:habitat/screens/tenant_profile.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/widgets/app_action_button.dart';
import 'package:habitat/widgets/app_picture.dart';
import 'package:habitat/widgets/app_scaffold.dart';
import 'package:habitat/widgets/app_text.dart';

class PropertyDetail extends StatefulWidget {
  const PropertyDetail({Key key}) : super(key: key);

  @override
  _PropertyDetailState createState() => _PropertyDetailState();
}

class _PropertyDetailState extends State<PropertyDetail>
    with TickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;
  double opacity1 = 0.0;
  double opacity2 = 0.0;
  double opacity3 = 0.0;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0, 1.0, curve: Curves.fastOutSlowIn)));
    setData();
    super.initState();
  }

  Future<void> setData() async {
    animationController.forward();
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity1 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity2 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity3 = 1.0;
    });
  }

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

  Widget _buildStickyButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppActionButton(
        title: 'Generate Agreement',
        function: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ContractTermPage()));
        },
        color: AppColor.blue,
      ),
    );
  }

  Widget _buildTenantDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: InkWell(
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => TenantProfilePage())),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: AppBoxShadow.normal,
            borderRadius: AppBorderRadius.normal,
            color: AppColor.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: AppBoxShadow.normal,
                        borderRadius: AppBorderRadius.normal,
                      ),
                      child: AppPicture(
                        width: 105,
                        height: 105,
                        image:
                            'https://img.etimg.com/thumb/msid-69139984,width-1200,height-900,imgsize-220108,overlay-etpanache/photo.jpg',
                        fit: BoxFit.cover,
                        isCustomBorderRadius: true,
                        customeBorderRadius: AppBorderRadius.normal,
                      ),
                    ),
                    AppWidthSizedBox.smallBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          'Captain American',
                          fontWeight: FontWeight.bold,
                        ),
                        AppText(
                          '+6012 345 6789',
                          color: AppColor.grey,
                          fontSize: 12,
                        ),
                        AppText(
                          'habitat@habitat.com.my',
                          color: AppColor.grey,
                          fontSize: 12,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          decoration: BoxDecoration(
                            color: AppColor.green,
                            borderRadius: AppBorderRadius.normal,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: AppText(
                              'View Profile',
                              color: AppColor.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AppText(
                            'Rented',
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: AppColor.green,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: false,
      bottomNavigatorBar: _buildStickyButton(context),
      backgroundColor: AppColor.veryLightGrey,
      child: SingleChildScrollView(
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
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
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
                    top: MediaQuery.of(context).size.height * 0.30,
                    left: 26,
                    child: ScaleTransition(
                      alignment: Alignment.center,
                      scale: CurvedAnimation(
                        parent: animationController,
                        curve: Curves.fastOutSlowIn,
                      ),
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
                  ),
                ],
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 500),
                opacity: opacity1,
                child: Padding(
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
                                  'RM1,500/m',
                                  color: AppColor.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 3,
                ),
              ),
              AppHeightSizedBox.smallBox,
              AnimatedOpacity(
                duration: const Duration(milliseconds: 500),
                opacity: opacity2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: AppText('Description'),
                    ),
                    AppHeightSizedBox.extraSmallBox,
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: AppText(
                        'Sky Condominium is the tallest landmark in Bandar Puchong Jaya. Situated 200 metres above sea level at the Hilltop with unobstructed views of the Puchong and KL skyline.',
                        letterSpacing: 1.5,
                        maxlines: 15,
                        fontSize: 13,
                      ),
                    ),
                    AppHeightSizedBox.smallBox,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: AppText('Address'),
                    ),
                    AppHeightSizedBox.extraSmallBox,
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: AppText(
                        'Persiaran Puchong Jaya Selatan, Bandar Puchong Jaya, 47100 Puchong, Selangor.',
                        letterSpacing: 1.5,
                        maxlines: 15,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 500),
                opacity: opacity3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(
                        height: 3,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: AppText('Amenities'),
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
                      padding: const EdgeInsets.all(16.0),
                      child: Divider(
                        height: 3,
                      ),
                    ),
                  ],
                ),
              ),
              _buildTenantDetails(context),
            ],
          ),
        ),
      ),
    );
  }
}
