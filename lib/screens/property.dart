import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:habitat/screens/property_detail.dart';
import 'package:habitat/screens/update_own_property_detail.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/widgets/app_picture.dart';
import 'package:habitat/widgets/app_scaffold.dart';
import 'package:habitat/widgets/app_text.dart';
import 'package:habitat/widgets/search_bar.dart';

class PropertyPage extends StatefulWidget {
  const PropertyPage({Key key}) : super(key: key);

  @override
  _PropertyPageState createState() => _PropertyPageState();
}

class _PropertyPageState extends State<PropertyPage>
    with TickerProviderStateMixin {
  AnimationController animationController;
  bool multiple = true;
  List<Map<String, dynamic>> rentingList = [
    {
      'id': 1,
      'image':
          'https://projects.iproperty.com.my/s3/origin-s3pictures.iproperty.com.my//condolib/condominiums/1200/1912_652_20160627.jpg',
      'title': 'Koi Tropika',
      'description': 'Puchong Selangor',
      'price': '1650',
      'type': 'Auto Debit',
    },
    {
      'id': 2,
      'image':
          'https://odis.homeaway.com/odis/listing/b5295d7b-ae31-4317-aa1a-c3cda31fd4b7.c10.jpg',
      'title': 'Seri Mutiara Apartment',
      'description': 'Shah Alam Selangor',
      'price': '3790',
      'type': 'Late Payment',
    },
    {
      'id': 3,
      'image':
          'https://www.avidestates.my/wp-content/uploads/WPL/633/thimg_2014-04-11_16.53.10_view_1380x920.jpg',
      'title': 'Seri Begonia Apartment',
      'description': 'Puchong Selangor',
      'price': '1050',
      'type': 'Renting',
    },
    {
      'id': 4,
      'image':
          'https://realman.my/wp-content/uploads/2019/06/photo_2019-06-24_11-47-06.jpg',
      'title': 'Tiara Intan Condo',
      'description': 'Bukit Indah Ampang',
      'price': '2300',
      'type': 'Available',
    },
    {
      'id': 5,
      'image':
          'https://www.estate123.com/residence/ImageView/11092016123025AM438167379@636091506330587500.jpg',
      'title': 'Ampang Condominium',
      'description': 'Shah Alam Selangor',
      'price': '1750',
      'type': 'Renting',
    },
    {
      'id': 6,
      'image':
          'https://media.edgeprop.my/s3fs-public/97171_1592207634_5EdgPro5_d_pines_condominium_taman_nirwana_ampang__1__large_0.jpg',
      'title': 'D\'Pines Condo',
      'description': 'Ampang Selangor',
      'price': '1500',
      'type': 'Available',
    },
    {
      'id': 7,
      'image':
          'https://amazempireproperty.com/wp-content/uploads/2019/06/1.png',
      'title': 'Dedaun Residence',
      'description': 'Ampang Selangor',
      'price': '3200',
      'type': 'Renting',
    },
  ];
  List<Map<String, dynamic>> ownPropertyList = [
    {
      'id': 1,
      'image':
          'https://my2-cdn.pgimgs.com/listing/29895667/UPHO.136616517.V800/Sky-Condominium-Bandar-Puchong-Jaya-Puchong-Malaysia.jpg',
      'title': 'Sky Condominium',
      'description': 'Puchong 47100',
      'price': '1500',
      'type': 'Rented',
    },
    {
      'id': 2,
      'image':
          'https://img.rea-asia.com/my-subsale/premium/750x435-fit/realtors/images/640/34482/0f2f25187971487fbc639c9710960576.jpg',
      'title': 'Puchong 16 Sierra',
      'description': 'Puchong',
      'price': '1500',
      'type': 'Rented',
    },
    {
      'id': 3,
      'image':
          'https://dbv47yu57n5vf.cloudfront.net/s3fs-public/editorial/my/2018/October/31/IOI-Properties_36_0.png',
      'title': 'Puchong Houses',
      'description': 'Puchong, Selangor',
      'price': '1800',
      'type': 'Rented',
    },
    {
      'id': 4,
      'image':
          'https://img.rea-asia.com/my-subsale/premium/750x435-fit/realtors/images/640/39065/bbde4b80a1d340cca8051bf80459015e.jpg',
      'title': 'D\' Latour',
      'description': 'Puchong, Selangor',
      'price': '1900',
      'type': 'Rented',
    },
    {
      'id': 5,
      'image':
          'https://my2-cdn.pgimgs.com/listing/25696433/UPHO.106337135.V800/2018-NEW-PRE-LAUNCH-2-STY-HOUSE-300unit-at-Puchong-Puchong-Malaysia.jpg',
      'title': 'Luxury Hosuse',
      'description': 'Puchong, Selangor',
      'price': '1500',
      'type': 'For Rent',
    },
    {
      'id': 6,
      'image':
          'https://my1-cdn.pgimgs.com/listing/29526573/UPHO.133407994.V800/FreeHold-Puchong-Landed-Property-23X85-RM469K-Puchong-Cyberjaya-0-Downpayment-Cash-Back-88K-Puchong-Malaysia.jpg',
      'title': 'One Puchong',
      'description': 'Puchong, Selangor',
      'price': '800',
      'type': 'For Rent',
    },
    {
      'id': 7,
      'image':
          'https://s3-ap-southeast-1.amazonaws.com/storage.propsocial.com/topic/post_picture/3045/7-Nilam_Puri-Puchong_top_properties-PropSocial_large_large.jpg',
      'title': 'Puchong Condo',
      'description': 'Puchong, Selangor',
      'price': '1500',
      'type': 'For Rent',
    },
  ];
  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1500), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 0));
    return true;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  Widget _buildSearchBar(BuildContext context) {
    FocusNode searchFocus;
    TextEditingController searchController;
    return Row(
      children: [
        Flexible(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
              boxShadow: AppBoxShadow.normal,
              color: AppColor.white,
              borderRadius: AppBorderRadius.normal,
            ),
            child: SearchBar(
              hintText: 'Search your properties...',
              searchFocus: searchFocus,
              searchController: searchController,
              searBarBackgroundColor: AppColor.white,
              fontColor: AppColor.darkGrey,
              onChanged: (String str) {},
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColor.blue,
            borderRadius: AppBorderRadius.normal,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Feather.sliders,
              color: AppColor.white,
              size: 20,
            ),
          ),
        ),
        AppWidthSizedBox.smallBox,
      ],
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      unselectedLabelColor: AppColor.blue,
      labelColor: AppColor.blue,
      labelStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 15,
      ),
      tabs: <Widget>[
        _buildTabContainer('Own Property'),
        _buildTabContainer('Renting'),
      ],
    );
  }

  Widget _buildTabContainer(String title) {
    return Tab(
      child: Container(
        child: Align(
          alignment: Alignment.center,
          child: Text(title),
        ),
      ),
    );
  }

  Widget _buildOwnPropertyList(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildSearchBar(context),
          AppHeightSizedBox.smallBox,
          GridView(
            padding: const EdgeInsets.only(top: 0, left: 12, right: 12),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: List<Widget>.generate(
              ownPropertyList.length,
              (int index) {
                final int count = ownPropertyList.length;
                final Animation<double> animation =
                    Tween<double>(begin: 0.0, end: 1.0).animate(
                  CurvedAnimation(
                    parent: animationController,
                    curve: Interval((1 / count) * index, 1.0,
                        curve: Curves.fastOutSlowIn),
                  ),
                );
                animationController.forward();
                return HomeListView(
                  animation: animation,
                  animationController: animationController,
                  listData: ownPropertyList[index],
                  callBack: () {
                    Navigator.push<dynamic>(
                      context,
                      MaterialPageRoute<dynamic>(
                        builder: (BuildContext context) =>
                            UpdateOwnPropertyDetailsPage(),
                      ),
                    );
                  },
                );
              },
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 12.0,
              crossAxisSpacing: 12.0,
              childAspectRatio: 3.6,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRentingList(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildSearchBar(context),
          AppHeightSizedBox.smallBox,
          GridView(
            padding: const EdgeInsets.only(top: 0, left: 12, right: 12),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: List<Widget>.generate(
              rentingList.length,
              (int index) {
                final int count = rentingList.length;
                final Animation<double> animation =
                    Tween<double>(begin: 0.0, end: 1.0).animate(
                  CurvedAnimation(
                    parent: animationController,
                    curve: Interval((1 / count) * index, 1.0,
                        curve: Curves.fastOutSlowIn),
                  ),
                );
                animationController.forward();
                return HomeListView(
                  animation: animation,
                  animationController: animationController,
                  listData: rentingList[index],
                  callBack: () {
                    if (index == 1)
                      return Navigator.push<dynamic>(
                        context,
                        MaterialPageRoute<dynamic>(
                          builder: (BuildContext context) => PropertyDetail(
                            isLatePayment: true,
                          ),
                        ),
                      );

                    return Navigator.push<dynamic>(
                      context,
                      MaterialPageRoute<dynamic>(
                        builder: (BuildContext context) => PropertyDetail(),
                      ),
                    );
                  },
                );
              },
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 12.0,
              crossAxisSpacing: 12.0,
              childAspectRatio: 3.6,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainContainer(BuildContext context) {
    return TabBarView(
      children: [
        _buildOwnPropertyList(context),
        _buildRentingList(context),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: AppScaffold(
          titleChild: AppText('Property'),
          tabBar: _buildTabBar(),
          backgroundColor: Colors.white,
          child: _buildMainContainer(context)),
    );
  }
}

class HomeListView extends StatelessWidget {
  const HomeListView({
    Key key,
    this.listData,
    this.callBack,
    this.animationController,
    this.animation,
  }) : super(key: key);

  final Map<String, dynamic> listData;
  final Animation<dynamic> animation;
  final VoidCallback callBack;
  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return FadeTransition(
          opacity: animation,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 50 * (1.0 - animation.value), 0.0),
            child: InkWell(
              onTap: () => callBack(),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        width: 0.3, color: AppColor.grey.withOpacity(0.2)),
                  ),
                  color: AppColor.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      AppPicture(
                        image: listData['image'],
                        height: 75,
                        width: 75,
                        isBorderRadius: true,
                      ),
                      AppWidthSizedBox.smallBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppHeightSizedBox.extraSmallBox,
                          AppText(
                            listData['title'],
                            fontSize: 17,
                          ),
                          AppText(
                            listData['description'],
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColor.green,
                              borderRadius: AppBorderRadius.normal,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AppText(
                                'RM${listData['price']}/m',
                                color: AppColor.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          AppHeightSizedBox.smallBox,
                          AppText(
                            listData['type'],
                            fontSize: 9,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
