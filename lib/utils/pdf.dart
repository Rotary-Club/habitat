import 'dart:io';

import 'package:flutter/material.dart' show AssetImage;
import 'package:habitat/models/contract.dart';
import 'package:habitat/utils/utils.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:printing/printing.dart';

Future<File> generateContractFile(ContractModel contract) async {
  final pdf = Document(deflate: zlib.encode);

  PdfImage logoImage = await pdfImageFromImageProvider(
    pdf: pdf.document,
    image: AssetImage('assets/images/logo-1024x1024.png'),
  );

  final coverPage = MultiPage(
    pageFormat: PdfPageFormat.a4,
    margin: EdgeInsets.all(32),
    footer: (context) => Footer(
      title: Row(
        children: [
          Text("Habitat Property"),
          Image(logoImage, height: 40),
        ],
      ),
    ),
    build: (Context context) {
      final today = DateTime.now();
      final formatter = DateFormat('MMMM');
      final day = today.day;
      final daySuffix = getDayOfMonthSuffix(day);
      final month = formatter.format(today);
      return <Widget>[
        Spacer(),
        Center(
          child: Text(
            "Dated this $day$daySuffix day of $month ${today.year}",
            textScaleFactor: 2,
            textAlign: TextAlign.center,
          ),
        ),
        Spacer(),
        Center(
          child: Text(
            "BETWEEN",
            textScaleFactor: 1.5,
            textAlign: TextAlign.center,
          ),
        ),
        Spacer(),
        Center(
          child: Text(
            "${contract.landlord.fullName}\n(NRIC: ${contract.landlord.nric})\n(\"The Landlord\")",
            textScaleFactor: 1.5,
            textAlign: TextAlign.center,
          ),
        ),
        Container(height: 30),
        Center(
          child: Text(
            "AND",
            textScaleFactor: 1.5,
            softWrap: true,
            textAlign: TextAlign.justify,
          ),
        ),
        Container(height: 30),
        Center(
          child: Text(
            "${contract.tenant.fullName}\n(NRIC: ${contract.tenant.nric})\n(\"The Tenant\")",
            textScaleFactor: 1.5,
            textAlign: TextAlign.center,
          ),
        ),
        Spacer(),
      ];
    },
  );

  pdf.addPage(coverPage);
  pdf.addPage(
    MultiPage(
      pageFormat: PdfPageFormat.a4,
      margin: const EdgeInsets.all(70),
      build: (Context context) => <Widget>[
        Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.start,
            runAlignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Text(
                    "TENANCY AGREEMENT",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Paragraph(
                text:
                    "              THIS TENANCY AGREEMENT (hereinafter referred to as \"the Agreement\") is made the day and year stated in Section 1 of the First Schedule hereto BETWEEN the party whose name, address and description is stated in Section 2 of the First Schedule hereto (hereinafter referred to as \"the Landlord\") of the one part AND the party whose name, address and description is stated in Section 3 of the First Schedule hereto (hereinafter referred to as \"the Tenant\") of the other part.",
              ),
              Paragraph(
                text: """
WHEREAS: -
            (I)     The Landlord is the registered and beneficial owner of a property more particularly referred to and described in Section 4 of the First Schedule hereto (hereinafter referred to as "the said Property")

            (II)    The Landlord has agreed to grant and the Tenant has agreed to take a tenancy of the premises more particularly referred to and described in Section 5 of the First Schedule hereto (hereinafter referred to as "the Demised Premises") upon the terms and conditions hereinafter appearing.

            (III)   The Landlord has agreed to grant and the Tenant has agreed to take a tenancy of the Demised Premises upon the terms and conditions hereinafter appearing.

            (IV)    The Tenant intends to utilise the Demised Premises only for the purpose as specified in Section 6 of the First Schedule hereto.
              """,
              ),
              Text('NOW THIS AGREEMENT WITHNESSETH as follows:'),
              Paragraph(
                textAlign: TextAlign.left,
                margin: EdgeInsets.only(top: 5),
                text:
                    '1. Subject to the terms and conditions hereinafter contained, the Landlord hereby grants and the Tenant hereby accepts a tenancy of the Demised Premises (hereinafter referred to as "the Tenancy") for a term as stipulated in Section 1 of the Second Schedule hereof with effect from the date as stated in Section 2 of the Second Schedule at a monthly rental as stated in Section 3 of the Second Schedule (hereinafter referred to as "the said Rent"), the said Rent is to be paid one month in advance without any deduction within the seventh (7th) days of each month. The first of such payment to be made on the commencement of the Agreement herein subject to the agreements and powers implied in the National Land Code, 1965 and subject to the stipulations modifications terms and conditions hereinafter contained.',
              ),
              Paragraph(
                textAlign: TextAlign.left,
                margin: EdgeInsets.only(top: 5),
                text:
                    '2. The tenant shall upon the execution of the Agreement herein pay to the Landlord the sum stipulated in Section 4 of the Second Schedule hereof being security deposit (hereinafter referred to as "the Security Deposit") as security for the due performance and observance by the Tenant of the stipulations terms and conditions of the Agreement herein. The Security Deposit shall be maintained at this figure during the term of the Tenancy and shall not be deemed to be or treated as payments of rent water electricity or other amenities except that the Landlord shall at his absolute discretion on the termination of the Tenancy or sooner determination thereof due of any breach of any of the provisions of this Agreement by the Tenant in the due observance and performance of the stipulations terms and conditions herein contained including any damages to the Demised Premises and to the fixtures and fitting thereof caused by the Tenant their servants or agents, to deduct whatsoever sum or sums that may be due to the Landlord as rent and other outgoings liable by the Tenant hereunder contained and/or for any repairs  3 replacements damages lost fixtures belonging to the Landlord on the Demised Premises, fair wear and tear excepted. In the event that there is a balance, to return the balance to the Tenant without interest thereon, within one (1) week of the termination.',
              ),
              Paragraph(
                textAlign: TextAlign.left,
                margin: EdgeInsets.only(top: 5),
                text:
                    '3. The Parties herein hereby covenant that the tenant shall pay to the Landlord a sum as stipulated in Section 5 of the Second Schedule hereto (hereinafter referred to as "the Utilities Deposit") being the deposit for water and electricity which sum shall be refunded to the tenant after the expiry of this Agreement on clearance of all water and electricity bills incurred by the tenant during the period of the Tenancy. The Utilities Deposit shall under no circumstances be used by the Tenant to offset the reserved rent and shall not be treated or deemed to be payment of the reserved rent.',
              ),
              Paragraph(
                textAlign: TextAlign.left,
                margin: EdgeInsets.only(top: 5),
                text:
                    '4. THE TENANT HEREBY COVENANTS WITH THE LANDLORD as follows:',
              ),
              Paragraph(
                text: """
                    (a) to pay the said Rent at the times and in the manner aforesaid;
                    (b) to pay all deposits for the supply of electricity, water and telephone and to pay and discharge punctually during the subsistence of the tenancy, all water and electricity, telephone, conservancy, garbage collection charges and other outgoings for the Demised Premises;
                    (c) to keep in tenantable repair and condition the Demised Premised including all windows glass shutters locks fastenings together with all the fixtures fittings and additions thereto throughout the term of the tenancy with fair wear and tear excepted and to yield up the same in such repair at the determination of the Tenancy and also to make good any stoppage of or damage caused by the negligence of the Tenant their servants licensees or invitees;
                    (d) to permit the Landlord and/or his agent with or without workmen and other at all reasonable times to enter and examine the state of repair of the Demised Premises and fixtures fittings therein and forthwith to repair and make good in a proper workmanlike manner any defects, decays and want of repair thereof which written notice shall be given to the Tenant or left on the said Demised Premises and if the Tenant shall not within fourteen (14) days after the service of such notice proceed diligently with the execution of the repairs then to permit the Landlord and/or his agent(s) to enter upon the Demised Premised and execute repairs and the costs thereof shall be the sum due from the Tenant and shall be repayable on demand;
                    (e) to use the Demised Premises for the purposes(s) as specified in Section 6 of the First Schedule only and not to use or permit to be used the Demised Premises for any illegal unlawful or immoral purposes whatsoever that may affect adversely the interest of the Landlord and not to do or permit to be done any act or thing which may become a nuisance or annoyance or cause damage or inconvenience to the Landlord or the tenant;
                    (g) not to do or permit to be done anything which will or may infringe or violate any statutes, laws or regulations pertaining to the Demised Premises and use it thereof to observe and be personally responsible for any infringement or violation against any statutes, laws or regulations and to indemnify the Landlord in respect thereof;
                    (h) not to affix, erect thereon or otherwise exhibit thereon any part thereof or permit or suffer to be so affixed erected or exhibited any advertisements of any whatsoever nor erect any boarding on which to place such advertisements nor to do anything which the Landlord may from time to time prohibit in writing;""",
              )
            ])
      ],
    ),
  );

  // pdf.addPage(firstPage);

  final output = await getTemporaryDirectory();
  File file = File("${output.path}/example.pdf");
  file = await file.writeAsBytes(pdf.save());

  return file;
}
