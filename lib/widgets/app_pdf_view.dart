import 'dart:io';

import 'package:flutter/material.dart';
import 'package:habitat/screens/home_bottom_navigation.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:habitat/widgets/app_action_button.dart';
import 'package:habitat/widgets/app_action_dialog.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

import 'app_scaffold.dart';
import 'app_text.dart';

class AppPdfViewer extends StatefulWidget {
  const AppPdfViewer(
    this.file, {
    Key key,
  }) : super(key: key);

  final File file;

  @override
  _AppPdfViewerState createState() => _AppPdfViewerState();
}

class _AppPdfViewerState extends State<AppPdfViewer> {
  int _actualPageNumber = 1, _allPagesCount = 0;
  PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openData(widget.file.readAsBytesSync()),
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AppScaffold(
        titleChild: AppText('Tenancy Contract'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.navigate_before),
            onPressed: () {
              _pdfController.previousPage(
                curve: Curves.ease,
                duration: Duration(milliseconds: 100),
              );
            },
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              '$_actualPageNumber/$_allPagesCount',
              style: TextStyle(fontSize: 16, color: AppColor.black),
            ),
          ),
          IconButton(
            icon: Icon(Icons.navigate_next),
            onPressed: () {
              _pdfController.nextPage(
                curve: Curves.ease,
                duration: Duration(milliseconds: 100),
              );
            },
          ),
        ],
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            PdfView(
              documentLoader: Center(child: CircularProgressIndicator()),
              pageLoader: Center(child: CircularProgressIndicator()),
              controller: _pdfController,
              onDocumentLoaded: (document) {
                setState(() {
                  _allPagesCount = document.pagesCount;
                });
              },
              onPageChanged: (page) {
                setState(() {
                  _actualPageNumber = page;
                });
              },
            ),
            Positioned(
              bottom: 40,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: AppActionButton(
                    function: () {
                      showDialog(
                        context: context,
                        builder: (context) => AppActionDialog(
                          title: 'Confirm Email?',
                          content:
                              'Tenant: jonas.kahnwald@sicmundus.com \nLanlord: matsenang@habitat.com',
                          actionText: 'Send',
                          function: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeBottomNavigation(),
                                ),
                                (Route<dynamic> route) => false);
                          },
                        ),
                      );
                    },
                    title: 'Share',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
