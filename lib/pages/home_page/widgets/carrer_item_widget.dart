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
      margin: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
      padding: const EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.ROW,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: ResponsiveRowColumnItem(
              child: Center(
                child: Text(
                  widget.carrerItem.duration,
                  style: GoogleFonts.mukta(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
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
                        widget.carrerItem.title,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.mukta(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.carrerItem.subTitle,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.mukta(fontSize: 22),
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
                        style: GoogleFonts.mukta(fontSize: 20),
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
