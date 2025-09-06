import 'package:curriculo_online/pages/home_page/components/carrer_time_line_component.dart';
import 'package:curriculo_online/pages/home_page/components/header_horizontal_component.dart';
import 'package:curriculo_online/pages/home_page/components/introduction_resume_component.dart';
import 'package:curriculo_online/pages/home_page/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'components/header_vertical_component.dart';
import 'components/portfolio_resume_component.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final HomePageController homePageController =
      GetIt.I.get<HomePageController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: _homeHeader(),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: _homeContent(),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: _homePortfolio(),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: _homeCarrerTimelineContent(),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            height: 100,
            child: Center(
              child: Text(
                "Herrison Féres - Desenvolvedor de software",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ResponsiveVisibility _homeHeader() {
    return ResponsiveVisibility(
      hiddenConditions: const [
        Condition.smallerThan(name: TABLET),
      ],
      replacement: HeaderVerticalComponent(
        githubCallback: homePageController.githubCallback,
        linkedinCallback: homePageController.linkedinCallback,
      ),
      child: HeaderHorizontalComponent(
        githubCallback: homePageController.githubCallback,
        linkedinCallback: homePageController.linkedinCallback,
      ),
    );
  }

  Container _homeContent() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: ResponsiveVisibility(
        hiddenConditions: const [
          Condition.smallerThan(name: TABLET),
        ],
        replacement: ResponsiveRowColumn(
          layout: ResponsiveRowColumnType.COLUMN,
          children: _content(),
        ),
        child: ResponsiveRowColumn(
          layout: ResponsiveRowColumnType.ROW,
          rowCrossAxisAlignment: CrossAxisAlignment.start,
          children: _content(isHorizontalOrientation: true),
        ),
      ),
    );
  }

  List<ResponsiveRowColumnItem> _content({
    bool isHorizontalOrientation = false,
  }) {
    return [
      ResponsiveRowColumnItem(
        rowFlex: isHorizontalOrientation ? 2 : 0,
        child: Container(
          constraints: BoxConstraints(
            minHeight: isHorizontalOrientation ? 410 : 0,
          ),
          child: const IntroductionResumeComponent(),
        ),
      ),
    ];
  }

  Widget _homePortfolio() {
    return const ResponsiveVisibility(
      hiddenConditions: [
        Condition.smallerThan(name: DESKTOP),
      ],
      replacement: PortfolioResumeComponent(),
      child: PortfolioResumeComponent(isHorizontalOrientation: true),
    );
  }

  Widget _homeCarrerTimelineContent() {
    return const CarrerTimeLineComponent();
  }
}
