import 'package:curriculo_online/pages/home_page/widgets/my_personal_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../widgets/my_picture_widget.dart';
import '../widgets/my_social_media_widget.dart';

///Utilizado pela responsividade para apresentar o conteúdo de forma vertical
///para os dispositivos mobile

class HeaderVerticalComponent extends StatelessWidget {
  final Function linkedinCallback;
  final Function githubCallback;

  const HeaderVerticalComponent({
    Key? key,
    required this.linkedinCallback,
    required this.githubCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.only(top: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Colors.lightBlueAccent,
            Colors.lightBlueAccent,
            Colors.lightBlueAccent.shade400,
          ],
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.COLUMN,
        children: [
          const ResponsiveRowColumnItem(
            child: MyPictureWidget(
              height: 160,
              width: 160,
              borderRadius: 100,
            ),
          ),
          const ResponsiveRowColumnItem(
            child: MyPersonalInfoWidget(alignment: Alignment.center),
          ),
          ResponsiveRowColumnItem(
            child: MySocialMediaWidget(
              linkedinCallback: linkedinCallback,
              githubCallback: githubCallback,
              margin: false,
            ),
          ),
        ],
      ),
    );
  }
}
