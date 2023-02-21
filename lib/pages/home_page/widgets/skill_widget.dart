import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SkillWidget extends StatelessWidget {
  final String title;
  final double level;
  final String levelText;
  final IconData? icon;
  final String imageAssetPath;
  final Color color;

  const SkillWidget({
    Key? key,
    this.title = "",
    this.level = 0,
    this.levelText = "",
    this.icon,
    this.imageAssetPath = "",
    this.color = Colors.lightBlueAccent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.COLUMN,
        columnMainAxisAlignment: MainAxisAlignment.center,
        children: [
          ResponsiveRowColumnItem(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            child: Container(
              margin: const EdgeInsets.all(10),
              child: icon != null
                  ? Icon(
                      icon,
                size: 50,
                    )
                  : Image.asset(
                      imageAssetPath,
                      width: 40,
                      height: 40,
                    ),
            ),
          ),
          level > 0
              ? ResponsiveRowColumnItem(
                  child: LinearPercentIndicator(
                    percent: level,
                    center: Text(levelText),
                    progressColor: Colors.amber,
                    lineHeight: 15,
                  ),
                )
              : ResponsiveRowColumnItem(
                  child: Text(
                    levelText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
