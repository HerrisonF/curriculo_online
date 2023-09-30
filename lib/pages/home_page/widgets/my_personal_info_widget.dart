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
          child: Container(
            margin: const EdgeInsets.only(top: 10),
            child: Align(
              alignment: alignment,
              child: Text(
                "Herrison Féres",
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          child: Align(
            alignment: alignment,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: FittedBox(
                child: Text(
                  "Engenheiro de Software Mobile".toUpperCase(),
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          child: Column(
            children: [
              ResponsiveRowColumnItem(
                child: Align(
                  alignment: alignment,
                  child: Text(
                    "${DateUtil.howOldIam()} anos",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
