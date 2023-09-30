import 'package:curriculo_online/pages/home_page/widgets/skill_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
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
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Habilidades Mobile".toUpperCase(),
                style: GoogleFonts.montserrat(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: ResponsiveRowColumn(
                layout: ResponsiveRowColumnType.ROW,
                rowMainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const ResponsiveRowColumnItem(
                    rowFit: FlexFit.tight,
                    child: SkillWidget(
                      title: "FLUTTER",
                      level: [1, 2, 3, 4, 5],
                      icon: Icons.flutter_dash,
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    rowFit: FlexFit.tight,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: const SkillWidget(
                        title: "ANDROID",
                        level: [1,2,3,4,5],
                        icon: Icons.android_outlined,
                      ),
                    ),
                  ),
                  const ResponsiveRowColumnItem(
                    rowFit: FlexFit.tight,
                    child: SkillWidget(
                      title: "IOS",
                      level: [1,2,3],
                      icon: Icons.apple_outlined,
                    ),
                  )
                ],
              ),
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
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Habilidades Secundárias".toUpperCase(),
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: ResponsiveRowColumn(
                layout: ResponsiveRowColumnType.ROW,
                children: [
                  ResponsiveRowColumnItem(
                    rowFit: FlexFit.tight,
                    child: Container(
                      margin: const EdgeInsets.only(right: 5),
                      child: const SkillWidget(
                        title: "JAVA",
                        level: [1,2,3,4,5],
                        icon: FontAwesomeIcons.java,
                      ),
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    rowFit: FlexFit.tight,
                    child: Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const SkillWidget(
                        title: "REACT",
                        level: [1,2,3],
                        icon: FontAwesomeIcons.react,
                      ),
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    rowFit: FlexFit.tight,
                    child: Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const SkillWidget(
                        title: "FIGMA",
                        level: [1,2,3],
                        icon: FontAwesomeIcons.figma,
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
            child: ResponsiveRowColumn(
              layout: ResponsiveRowColumnType.ROW,
              rowMainAxisAlignment: MainAxisAlignment.center,
              children: [
                ResponsiveRowColumnItem(
                  child: Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: const SkillWidget(
                      title: "INGLÊS",
                      level: [1,2,3],
                      icon: FontAwesomeIcons.flagUsa,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
