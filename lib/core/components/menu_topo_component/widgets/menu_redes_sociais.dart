import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/core/constants/color.dart';
import 'package:website/core/constants/strings.dart';

class MenuRedesSociais extends StatelessWidget {
  const MenuRedesSociais({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [_mobileLayout()],
    );
  }

  Container _mobileLayout() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _botaoRedeSocialGIT(),
          SizedBox(width: 15),
          _botaoRedeSocialLINKEDIN(),
        ],
      ),
    );
  }

  InkWell _botaoRedeSocialGIT() {
    return InkWell(
      child: Column(
        children: [
          FaIcon(FontAwesomeIcons.github, color: BRANCO),
          Text(botaoGit, style: GoogleFonts.iceland(color: BRANCO)),
        ],
      ),
      onTap: () {
        _abrirGit();
      },
    );
  }

  InkWell _botaoRedeSocialLINKEDIN() {
    return InkWell(
      child: Column(
        children: [
          FaIcon(FontAwesomeIcons.linkedin, color: BRANCO),
          Text(botaoLinkedin, style: GoogleFonts.iceland(color: BRANCO)),
        ],
      ),
      onTap: () {
        _abrirLinkedin();
      },
    );
  }

  Future<void> _abrirGit() async {
    final uri = Uri.parse('https://github.com/HerrisonF');

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  Future<void> _abrirLinkedin() async {
    final uri = Uri.parse(
      'https://www.linkedin.com/in/herrison-f%C3%A9res-423023103',
    );

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}
