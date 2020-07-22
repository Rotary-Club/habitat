import 'package:flutter/material.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/widgets/app_text.dart';

class AppActionDialog extends StatelessWidget {
  final String title;
  final String content;
  final String actionText;
  final String cencelText;
  final Function function;
  final Function cancelAction;
  final bool isRichText;
  final Widget richText;

  const AppActionDialog({
    @required this.content,
    @required this.function,
    this.actionText: 'Submit',
    this.cencelText: 'Cancel',
    this.title: 'Gentle Remind',
    this.cancelAction,
    this.isRichText: false,
    this.richText,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: AppText(
        title,
        color: Colors.black,
      ),
      content: isRichText
          ? richText
          : AppText(
              content,
              color: Colors.black,
              maxlines: 5,
            ),
      actions: <Widget>[
        FlatButton(
          child: AppText(
            cencelText,
            color: Colors.grey,
          ),
          onPressed: () {
            Navigator.pop(context);
            if (cancelAction != null) cancelAction();
          },
        ),
        FlatButton(
          child: AppText(
            actionText,
            color: AppColor.red,
          ),
          onPressed: () async {
            function();
          },
        )
      ],
    );
  }
}
