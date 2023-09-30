import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SkillWidget extends StatelessWidget {
  final String title;
  final List<int> level;
  final IconData? icon;

  const SkillWidget({
    Key? key,
    this.title = "",
    this.level = const [],
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.lightBlueAccent.shade200,
            Colors.lightBlue.shade400,
            Colors.lightBlueAccent.shade200,
          ],
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.COLUMN,
        columnMainAxisAlignment: MainAxisAlignment.center,
        children: [
          ResponsiveRowColumnItem(
            child: Text(
              title,
              style: GoogleFonts.montserrat(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Icon(
                icon,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(
                children: level
                    .map((e) => const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ))
                    .toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
