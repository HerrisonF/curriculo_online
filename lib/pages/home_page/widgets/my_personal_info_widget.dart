import 'package:curriculo_online/core/extensions/datetime_extension.dart';
import 'package:curriculo_online/pages/home_page/widgets/my_social_media_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPersonalInfoWidget extends StatelessWidget {
  final bool vertical;
  final Function linkedinCallback;
  final Function githubCallback;

  const MyPersonalInfoWidget({
    Key? key,
    this.vertical = false,
    required this.linkedinCallback,
    required this.githubCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: vertical ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                "Herrison Féres - Desenvolvedor de Software",
                textAlign: vertical ? TextAlign.center : TextAlign.start,
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
          vertical: vertical,
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
