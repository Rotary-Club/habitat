import 'package:flutter/material.dart';
import 'package:habitat/screens/property_detail.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/widgets/app_category_tag.dart';
import 'package:habitat/widgets/app_picture.dart';
import 'package:habitat/widgets/app_text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  AnimationController animationController;
  bool multiple = true;

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
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PropertyDetail(
                    tag: i.toString(),
                  ))),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder<bool>(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (!snapshot.hasData) {
            return const SizedBox();
          } else {
            return Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  appBar(),
                  AppHeightSizedBox.smallBox,
                  Expanded(
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: (context, i) =>
                              _buildPropertyListItem(context, i)),
                    ),
                  ),
                ],
              ),
            );
          }
        },
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
