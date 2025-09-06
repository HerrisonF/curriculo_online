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
      padding: const EdgeInsets.only(top: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.lightBlueAccent.shade700,
            Colors.lightBlueAccent.shade400,
            Colors.lightBlueAccent.shade200,
            Colors.lightBlueAccent.shade100,
          ],
        ),
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(8),
        ),
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
          ResponsiveRowColumnItem(
            child: MyPersonalInfoWidget(
              vertical: true,
              linkedinCallback: linkedinCallback,
              githubCallback: githubCallback,
            ),
          ),
        ],
      ),
    );
  }
}
