import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../core/util/date_util.dart';

class MyPersonalInfoWidget extends StatelessWidget {
  final Alignment alignment;

  const MyPersonalInfoWidget({Key? key, required this.alignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.COLUMN,
      children: [
        ResponsiveRowColumnItem(
          child: Align(
            alignment: alignment,
            child: Text(
              "Herrison Féres",
              style: GoogleFonts.robotoSlab(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          child: Align(
            alignment: alignment,
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                "Mobile Software Engineer",
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          child: Align(
            alignment: alignment,
            child: Text(
              "${DateUtil.howOldIam()} anos",
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          child: Align(
            alignment: alignment,
            child: Text(
              "Valentim Gentil - São Paulo",
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          child: Align(
            alignment: alignment,
            child: Text(
              "herrisonf_nascimento@hotmail.com",
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
