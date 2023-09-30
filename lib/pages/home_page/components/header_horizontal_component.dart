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
          colors: [
            Colors.lightBlueAccent.shade700,
            Colors.lightBlueAccent.shade400,
            Colors.lightBlueAccent.shade200,
            Colors.lightBlueAccent.shade100,
          ],
        ),
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.ROW,
        children: [
           ResponsiveRowColumnItem(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: const MyPictureWidget(
                height: 250,
                width: 250,
                borderRadius: 4,
              ),
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
