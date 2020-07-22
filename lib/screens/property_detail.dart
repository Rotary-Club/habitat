import 'package:flutter/material.dart';
import 'package:habitat/widgets/app_picture.dart';
import 'package:habitat/widgets/app_scaffold.dart';
import 'package:habitat/widgets/app_text.dart';

class PropertyDetail extends StatelessWidget {
  final String tag;
  const PropertyDetail({@required this.tag, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      titleChild: AppText("Property Detail"),
      isElevation: true,
      child: Container(
        child: Column(
          children: [
            Hero(
              tag: tag,
              child: AppPicture(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                image:
                    'https://my2-cdn.pgimgs.com/listing/29895667/UPHO.136616517.V800/Sky-Condominium-Bandar-Puchong-Jaya-Puchong-Malaysia.jpg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
