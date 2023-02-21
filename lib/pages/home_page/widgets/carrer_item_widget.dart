import 'package:curriculo_online/core/models/carrer_item.dart';
import 'package:flutter/material.dart';
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
        borderRadius: BorderRadius.circular(8)
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
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
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
                      ),
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.carrerItem.description,
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
