import 'package:curriculo_online/pages/home_page/widgets/skill_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SkillsResumeComponent extends StatelessWidget {
  const SkillsResumeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.COLUMN,
      children: [
        _mainSkills(),
        _secondarySkills(),
        _languages(),
      ],
    );
  }

  ResponsiveRowColumnItem _mainSkills() {
    return ResponsiveRowColumnItem(
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.COLUMN,
        children: [
          ResponsiveRowColumnItem(
            child: Container(
              padding: const EdgeInsets.only(bottom: 10),
              child: const Text(
                "Skills Principais",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            child: ResponsiveRowColumn(
              layout: ResponsiveRowColumnType.ROW,
              rowMainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ResponsiveRowColumnItem(
                  rowFit: FlexFit.tight,
                  child: SkillWidget(
                    title: "Flutter",
                    levelText: "Sênior",
                    icon: Icons.flutter_dash,
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFit: FlexFit.tight,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const SkillWidget(
                      title: "Android",
                      levelText: "Sênior",
                      icon: Icons.android_outlined,
                    ),
                  ),
                ),
                const ResponsiveRowColumnItem(
                  rowFit: FlexFit.tight,
                  child: SkillWidget(
                    title: "IOS",
                    levelText: "Júnior",
                    icon: Icons.apple_outlined,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  ResponsiveRowColumnItem _secondarySkills() {
    return ResponsiveRowColumnItem(
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.COLUMN,
        children: [
          ResponsiveRowColumnItem(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                "Skills Secundárias",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            child: ResponsiveRowColumn(
              layout: ResponsiveRowColumnType.ROW,
              children: [
                ResponsiveRowColumnItem(
                  rowFit: FlexFit.tight,
                  child: Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: const SkillWidget(
                      title: "Java",
                      levelText: "Pleno",
                      icon: FontAwesomeIcons.java,
                    ),
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFit: FlexFit.tight,
                  child: Container(
                    margin: const EdgeInsets.only(left: 5),
                    child: const SkillWidget(
                      title: "React",
                      levelText: "Júnior",
                      icon: FontAwesomeIcons.react,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  ResponsiveRowColumnItem _languages() {
    return ResponsiveRowColumnItem(
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.COLUMN,
        children: [
          ResponsiveRowColumnItem(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: const Text(
                "Idiomas",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.greenAccent,
              ),
              child: ResponsiveRowColumn(
                layout: ResponsiveRowColumnType.ROW,
                rowMainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ResponsiveRowColumnItem(
                    child: Container(
                      margin: const EdgeInsets.only(right: 5),
                      child: const SkillWidget(
                        title: "Inglês",
                        level: 0.6,
                        levelText: "60%",
                        imageAssetPath: "images/languages/US.png",
                        color: Colors.greenAccent,
                      ),
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const SkillWidget(
                        title: "Japonês",
                        level: 0.01,
                        levelText: "5%",
                        imageAssetPath: "images/languages/JP.png",
                        color: Colors.greenAccent,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
