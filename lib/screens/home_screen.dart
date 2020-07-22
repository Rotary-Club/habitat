import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:habitat/screens/property_detail.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/widgets/app_category_tag.dart';
import 'package:habitat/widgets/app_picture.dart';
import 'package:habitat/widgets/app_scaffold.dart';
import 'package:habitat/widgets/app_text.dart';
import 'package:habitat/widgets/search_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  AnimationController animationController;
  bool multiple = true;
  List<Map<String, dynamic>> homeList = [
    {
      'id': 1,
      'image':
          'https://my2-cdn.pgimgs.com/listing/29895667/UPHO.136616517.V800/Sky-Condominium-Bandar-Puchong-Jaya-Puchong-Malaysia.jpg',
      'title': 'Seri Mutiara Apartment',
      'description': 'Shah Alam Selangor',
      'price': '1500',
      'type': 'For Rent',
    },
    {
      'id': 2,
      'image':
          'https://my2-cdn.pgimgs.com/listing/29895667/UPHO.136616517.V800/Sky-Condominium-Bandar-Puchong-Jaya-Puchong-Malaysia.jpg',
      'title': 'Seri Mutiara Apartment',
      'description': 'Shah Alam Selangor',
      'price': '1500',
      'type': 'For Rent',
    },
    {
      'id': 3,
      'image':
          'https://my2-cdn.pgimgs.com/listing/29895667/UPHO.136616517.V800/Sky-Condominium-Bandar-Puchong-Jaya-Puchong-Malaysia.jpg',
      'title': 'Seri Mutiara Apartment',
      'description': 'Shah Alam Selangor',
      'price': '1500',
      'type': 'For Rent',
    },
    {
      'id': 4,
      'image':
          'https://my2-cdn.pgimgs.com/listing/29895667/UPHO.136616517.V800/Sky-Condominium-Bandar-Puchong-Jaya-Puchong-Malaysia.jpg',
      'title': 'Seri Mutiara Apartment',
      'description': 'Shah Alam Selangor',
      'price': '1500',
      'type': 'For Rent',
    },
    {
      'id': 5,
      'image':
          'https://my2-cdn.pgimgs.com/listing/29895667/UPHO.136616517.V800/Sky-Condominium-Bandar-Puchong-Jaya-Puchong-Malaysia.jpg',
      'title': 'Seri Mutiara Apartment',
      'description': 'Shah Alam Selangor',
      'price': '1500',
      'type': 'For Rent',
    },
    {
      'id': 6,
      'image':
          'https://my2-cdn.pgimgs.com/listing/29895667/UPHO.136616517.V800/Sky-Condominium-Bandar-Puchong-Jaya-Puchong-Malaysia.jpg',
      'title': 'Seri Mutiara Apartment',
      'description': 'Shah Alam Selangor',
      'price': '1500',
      'type': 'For Rent',
    },
    {
      'id': 7,
      'image':
          'https://my2-cdn.pgimgs.com/listing/29895667/UPHO.136616517.V800/Sky-Condominium-Bandar-Puchong-Jaya-Puchong-Malaysia.jpg',
      'title': 'Seri Mutiara Apartment',
      'description': 'Shah Alam Selangor',
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

  Widget _buildPropertyListItem(BuildContext context, int i) {
    return InkWell(
      // onTap: () => Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: (context) => PropertyDetail(
      //               tag: i.toString(),
      //             ))),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: AppTheme.white,
            boxShadow: AppBoxShadow.normal,
            borderRadius: AppBorderRadius.normal,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Hero(
                    tag: i.toString(),
                    child: AppPicture(
                      width: double.infinity,
                      image:
                          'https://my2-cdn.pgimgs.com/listing/29895667/UPHO.136616517.V800/Sky-Condominium-Bandar-Puchong-Jaya-Puchong-Malaysia.jpg',
                    ),
                  ),
                  Positioned(
                    top: 16,
                    right: 16,
                    child: AppCategoryTag('Renting'),
                  ),
                ],
              ),
              Divider(
                height: 1,
              ),
              Container(
                margin: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          'Taman Ukay Bistari',
                          fontSize: 18,
                        ),
                        AppHeightSizedBox.extraSmallBox,
                        AppText(
                          'Ampang, Selangor',
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        AppText(
                          'tenant Name      : Putra',
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        AppText(
                          'Tenancy Period  : Nov 2017 - Nov 2020',
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        AppText(
                          'RM1500',
                          fontSize: 18,
                        ),
                        AppText(
                          'Per month',
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAvatar() {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: AppPicture(
                  width: 48,
                  height: 48,
                  isCustomBorderRadius: true,
                  customeBorderRadius: BorderRadius.all(Radius.circular(60.0)),
                  image:
                      'https://www.straitstimes.com/sites/default/files/styles/article_pictrure_780x520_/public/articles/2019/05/31/st_20190531_trend311t5b_4878396.jpg?itok=W3PepKXp&timestamp=1559235671',
                ),
              ),
              AppWidthSizedBox.smallBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText('Kim Jong Un'),
                  AppText(
                    'Super Rich Landlord',
                    color: AppColor.grey,
                  ),
                ],
              ),
              Expanded(
                child: Container(),
              ),
              Icon(
                AntDesign.notification,
              ),
            ],
          ),
          AppHeightSizedBox.mediumBox,
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: AppBorderRadius.normal,
              color: AppColor.white,
              boxShadow: AppBoxShadow.normal,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      '10',
                      color: AppColor.blue,
                      fontSize: 20,
                    ),
                    AppText(
                      'Rented',
                      color: AppColor.grey,
                      fontSize: 12,
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  width: 0.2,
                  color: Colors.grey,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      '1',
                      color: AppColor.blue,
                      fontSize: 20,
                    ),
                    AppText(
                      'Renting',
                      color: AppColor.grey,
                      fontSize: 12,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
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
              fontColor: AppColor.grey.withOpacity(0.7),
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

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: false,
      backgroundColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Expanded(
            //   child: MediaQuery.removePadding(
            //     context: context,
            //     removeTop: true,
            //     child: ListView.builder(
            //         itemCount: 4,
            //         itemBuilder: (context, i) =>
            //             _buildPropertyListItem(context, i)),
            //   ),
            // ),
            _buildAvatar(),
            _buildSearchBar(context),
            AppHeightSizedBox.smallBox,
            Flexible(
              child: GridView(
                padding: const EdgeInsets.only(top: 0, left: 12, right: 12),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: List<Widget>.generate(
                  homeList.length,
                  (int index) {
                    final int count = homeList.length;
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
                      listData: homeList[index],
                      callBack: () {
                        Navigator.push<dynamic>(
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
            ),
          ],
        ),
      ),
    );
  }

  Widget appBar() {
    return SizedBox(
      height: AppBar().preferredSize.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  'Habitat',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeListView extends StatelessWidget {
  const HomeListView(
      {Key key,
      this.listData,
      this.callBack,
      this.animationController,
      this.animation})
      : super(key: key);

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
