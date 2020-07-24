import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:habitat/screens/issues.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/utils/utils.dart';
import 'package:habitat/widgets/app_picture.dart';
import 'package:habitat/widgets/app_scaffold.dart';
import 'package:habitat/widgets/app_text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  AnimationController animationController;
  AnimationController animationController2;
  Animation<double> animation;
  double opacity1 = 0.0;
  double opacity2 = 0.0;
  double opacity3 = 0.0;
  bool multiple = true;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1500), vsync: this);
    animationController2 = AnimationController(
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

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 0));
    return true;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  Widget _buildAvatar() {
    return Container(
      color: AppColor.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 28.0,
          vertical: 36,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppText(
                  'Hello, Gary!',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                ScaleTransition(
                  alignment: Alignment.center,
                  scale: CurvedAnimation(
                    parent: animationController,
                    curve: Curves.fastOutSlowIn,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: AppPicture(
                      width: 56,
                      height: 56,
                      isCustomBorderRadius: true,
                      customeBorderRadius:
                          BorderRadius.all(Radius.circular(60.0)),
                      image:
                          'https://www.straitstimes.com/sites/default/files/styles/article_pictrure_780x520_/public/articles/2019/05/31/st_20190531_trend311t5b_4878396.jpg?itok=W3PepKXp&timestamp=1559235671',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPropertyRental(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: AppBoxShadow.normal,
          color: AppColor.white,
          borderRadius: AppBorderRadius.normal,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  AppText(
                    'Property Rental',
                    fontWeight: FontWeight.bold,
                  ),
                  Expanded(child: Container()),
                  Icon(Icons.more_horiz, color: AppColor.grey),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.search, color: AppColor.grey),
                ],
              ),
              AppHeightSizedBox.smallBox,
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: AppColor.green),
                      ),
                      AppWidthSizedBox.smallBox,
                      AppText(
                        'Collection',
                        color: AppColor.grey,
                      ),
                    ],
                  ),
                  AppWidthSizedBox.smallBox,
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: AppColor.blue),
                      ),
                      AppWidthSizedBox.smallBox,
                      AppText(
                        'Paid',
                        color: AppColor.grey,
                      ),
                    ],
                  ),
                ],
              ),
              AppHeightSizedBox.mediumBox,
              SizedBox(
                height: 135,
                child: ListView.separated(
                  separatorBuilder: (context, i) => Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                  ),
                  itemCount: 10,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) => Container(
                    height: 135,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: (50 + (i + 25)).toDouble(),
                              width: 3,
                              color: AppColor.green,
                            ),
                            AppWidthSizedBox.doubleExtraSmallBox,
                            Container(
                              height: (120 - (i + 25)).toDouble(),
                              width: 3,
                              color: AppColor.blue,
                            ),
                          ],
                        ),
                        AppHeightSizedBox.doubleExtraSmallBox,
                        AppText(
                          (i + 1).toString(),
                          color: AppColor.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPropertyGoal(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: InkWell(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => IssuesPage())),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: AppBoxShadow.normal,
            color: AppColor.white,
            borderRadius: AppBorderRadius.normal,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    AppText(
                      'Property Goals',
                      fontWeight: FontWeight.bold,
                    ),
                    Expanded(child: Container()),
                    Icon(Icons.more_horiz, color: AppColor.grey),
                  ],
                ),
                AppHeightSizedBox.mediumBox,
                Row(
                  children: [
                    AppText('Rentend Properties'),
                    Expanded(
                      child: Container(),
                    ),
                    AppText('1 / 6'),
                  ],
                ),
                AppHeightSizedBox.smallBox,
                Stack(
                  children: [
                    Container(
                      height: 6,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColor.lightGrey,
                        borderRadius: AppBorderRadius.normal,
                      ),
                    ),
                    Container(
                      height: 6,
                      width: maxWidth(context) * 0.15,
                      decoration: BoxDecoration(
                        color: AppColor.blue,
                        borderRadius: AppBorderRadius.normal,
                      ),
                    ),
                  ],
                ),
                AppHeightSizedBox.mediumBox,
                Row(
                  children: [
                    AppText('Profile'),
                    Expanded(
                      child: Container(),
                    ),
                    AppText('-90%'),
                  ],
                ),
                AppHeightSizedBox.smallBox,
                Stack(
                  children: [
                    Container(
                      height: 6,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColor.lightGrey,
                        borderRadius: AppBorderRadius.normal,
                      ),
                    ),
                    Container(
                      height: 6,
                      width: maxWidth(context) * 0.03,
                      decoration: BoxDecoration(
                        color: AppColor.red,
                        borderRadius: AppBorderRadius.normal,
                      ),
                    ),
                  ],
                ),
                AppHeightSizedBox.mediumBox,
                Row(
                  children: [
                    AppText('Issues Reported'),
                    Expanded(
                      child: Container(),
                    ),
                    AppText('85%'),
                  ],
                ),
                AppHeightSizedBox.smallBox,
                Stack(
                  children: [
                    Container(
                      height: 6,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColor.lightGrey,
                        borderRadius: AppBorderRadius.normal,
                      ),
                    ),
                    Container(
                      height: 6,
                      width: maxWidth(context) * 0.7,
                      decoration: BoxDecoration(
                        color: AppColor.green,
                        borderRadius: AppBorderRadius.normal,
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

  Widget _buildNews(BuildContext context) {
    List<Map<String, dynamic>> news = [
      {
        'color': AppColor.green,
        'icon': Feather.image,
        'title': 'KLCC has replied to your request',
        'time': '12 min ago',
      },
      {
        'color': AppColor.blue,
        'icon': Feather.mail,
        'title': 'Your message to Roberta was sent',
        'time': '39 min ago',
      },
      {
        'color': AppColor.orange,
        'icon': Icons.person,
        'title': 'You have new friend suggestion',
        'time': '2 hours ago',
      },
    ];
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: AppBoxShadow.normal,
          color: AppColor.white,
          borderRadius: AppBorderRadius.normal,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  AppText(
                    'Property News',
                    fontWeight: FontWeight.bold,
                  ),
                  Expanded(child: Container()),
                  Icon(Icons.more_horiz, color: AppColor.grey),
                ],
              ),
              AppHeightSizedBox.mediumBox,
              MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: news.length,
                  itemBuilder: (context, i) => Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Row(
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: news[i]['color'].withOpacity(0.2),
                          ),
                          child: Center(
                            child: Icon(
                              news[i]['icon'],
                              color: news[i]['color'],
                            ),
                          ),
                        ),
                        AppWidthSizedBox.smallBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(news[i]['title']),
                            AppHeightSizedBox.extraSmallBox,
                            AppText(
                              news[i]['time'],
                              color: AppColor.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMainContainer(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildAvatar(),
          AppHeightSizedBox.smallBox,
          AnimatedOpacity(
            duration: const Duration(milliseconds: 1000),
            opacity: opacity1,
            child: _buildPropertyRental(context),
          ),
          AppHeightSizedBox.smallBox,
          AnimatedOpacity(
            duration: const Duration(milliseconds: 1000),
            opacity: opacity2,
            child: _buildPropertyGoal(context),
          ),
          AppHeightSizedBox.smallBox,
          AnimatedOpacity(
            duration: const Duration(milliseconds: 1000),
            opacity: opacity3,
            child: _buildNews(context),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: AppScaffold(
        appBar: false,
        backgroundColor: AppColor.veryLightGrey,
        child: _buildMainContainer(context),
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
