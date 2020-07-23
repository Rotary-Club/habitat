import 'dart:io';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import 'package:habitat/models/contract.dart';

double maxHeight(BuildContext context) => MediaQuery.of(context).size.height;

double maxWidth(BuildContext context) => MediaQuery.of(context).size.width;

Future<File> generateContractFile(ContractModel contract) async {
  final pdf = pw.Document();

  pdf.addPage(
    pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      margin: pw.EdgeInsets.all(32),
      build: (pw.Context context) {
        final today = DateTime.now();
        final formatter = DateFormat('MMMM');
        final day = today.day;
        final daySuffix = getDayOfMonthSuffix(day);
        final month = formatter.format(today);
        return <pw.Widget>[
          pw.Spacer(),
          pw.Center(
            child: pw.Text(
              "Dated this $day$daySuffix day of $month ${today.year}",
              textScaleFactor: 2,
              textAlign: pw.TextAlign.center,
            ),
          ),
          pw.Spacer(),
          pw.Center(
            child: pw.Text(
              "BETWEEN",
              textScaleFactor: 1.5,
              textAlign: pw.TextAlign.center,
            ),
          ),
          pw.Spacer(),
          pw.Center(
            child: pw.Text(
              "${contract.landlord.fullName}\n(NRIC: ${contract.landlord.nric})\n(\"The Landlord\")",
              textScaleFactor: 1.5,
              textAlign: pw.TextAlign.center,
            ),
          ),
          pw.Container(height: 30),
          pw.Center(
            child: pw.Text(
              "AND",
              textScaleFactor: 1.5,
              softWrap: true,
              textAlign: pw.TextAlign.justify,
            ),
          ),
          pw.Container(height: 30),
          pw.Center(
            child: pw.Text(
              "${contract.tenant.fullName}\n(NRIC: ${contract.tenant.nric})\n(\"The Tenant\")",
              textScaleFactor: 1.5,
              textAlign: pw.TextAlign.center,
            ),
          ),
          pw.Spacer(),
          pw.Footer(
            title: pw.Text("Habitat Property", textAlign: pw.TextAlign.right),
          )
        ];
      },
    ),
  );

  final output = await getTemporaryDirectory();
  File file = File("${output.path}/example.pdf");
  file = await file.writeAsBytes(pdf.save());

  return file;
}

String getDayOfMonthSuffix(int dayNum) {
  if (!(dayNum >= 1 && dayNum <= 31)) {
    throw Exception('Invalid day of month');
  }

  if (dayNum >= 11 && dayNum <= 13) {
    return 'th';
  }

  switch (dayNum % 10) {
    case 1:
      return 'st';
    case 2:
      return 'nd';
    case 3:
      return 'rd';
    default:
      return 'th';
  }
}
