import 'package:curriculo_online/pages/home_page/widgets/my_personal_info_widget.dart';
import 'package:curriculo_online/pages/home_page/widgets/my_picture_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../widgets/my_social_media_widget.dart';

///Utilizado pela responsividade para apresentar o conteúdo de forma horizontal
///para os dispositivos maiores que o mobile
class HeaderHorizontalComponent extends StatelessWidget {
  final Function linkedinCallback;
  final Function githubCallback;

  const HeaderHorizontalComponent({
    Key? key,
    required this.linkedinCallback,
    required this.githubCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.lightBlueAccent,
            Colors.lightBlueAccent.shade400,
            Colors.lightBlueAccent.shade700,
          ],
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.ROW,
        children: [
          const ResponsiveRowColumnItem(
            child: MyPictureWidget(
              height: 200,
              width: 200,
              borderRadius: 8,
            ),
          ),
          ResponsiveRowColumnItem(
            child: Expanded(
              child: ResponsiveRowColumn(
                layout: ResponsiveRowColumnType.COLUMN,
                children: [
                  const ResponsiveRowColumnItem(
                    child: MyPersonalInfoWidget(
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: MySocialMediaWidget(
                      linkedinCallback: linkedinCallback,
                      githubCallback: githubCallback,
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
