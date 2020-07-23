import 'package:flutter/material.dart';
import 'package:habitat/widgets/app_scaffold.dart';
import 'package:habitat/widgets/app_text.dart';

class IssuePage extends StatelessWidget {
  const IssuePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      titleChild: AppText('Issues'),
    );
  }
}
