import 'package:curriculo_online/core/extensions/datetime_extension.dart';
import 'package:curriculo_online/pages/home_page/widgets/my_social_media_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPersonalInfoWidget extends StatelessWidget {
  final Alignment alignment;
  final Function linkedinCallback;
  final Function githubCallback;

  const MyPersonalInfoWidget({
    Key? key,
    required this.alignment,
    required this.linkedinCallback,
    required this.githubCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                "Herrison Féres - Desenvolvedor de Software",
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        MySocialMediaWidget(
          linkedinCallback: linkedinCallback,
          githubCallback: githubCallback,
        ),
        Text(
          "${DateTime.now().howOldIam} anos",
          style: GoogleFonts.montserrat(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
