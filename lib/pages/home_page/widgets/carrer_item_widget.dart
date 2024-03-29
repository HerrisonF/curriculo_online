import 'package:curriculo_online/core/models/carrer_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CarrerItemWidget extends StatefulWidget {
  final CarrerItem carrerItem;

  const CarrerItemWidget({Key? key, required this.carrerItem})
      : super(key: key);

  @override
  State<CarrerItemWidget> createState() => _CarrerItemWidgetState();
}

class _CarrerItemWidgetState extends State<CarrerItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: const EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(2, 2),
            blurRadius: 4,
          )
        ],
      ),
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.ROW,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 10,
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              child: ResponsiveRowColumn(
                layout: ResponsiveRowColumnType.COLUMN,
                children: [
                  ResponsiveRowColumnItem(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.carrerItem.title.toUpperCase(),
                        style: GoogleFonts.montserrat(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.carrerItem.subTitle.toUpperCase(),
                        style: GoogleFonts.montserrat(fontSize: 16),
                      ),
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: Center(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            widget.carrerItem.duration,
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: Container(
                      margin:
                          const EdgeInsets.only(top: 20, bottom: 20, right: 10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.carrerItem.description,
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
