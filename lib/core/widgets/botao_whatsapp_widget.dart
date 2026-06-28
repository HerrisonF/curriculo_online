import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/core/constants/color.dart';
import 'package:website/core/constants/strings.dart';

class BotaoWhatsappWidget extends StatelessWidget {

  const BotaoWhatsappWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AZUL_BORDA,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              botaoVamosConversar,
              style: GoogleFonts.audiowide(
                color: BRANCO,
                fontSize: 14,
              ),
            ),
            const SizedBox(width: 10),
            const FaIcon(
              FontAwesomeIcons.whatsapp,
              color: Colors.green,
              size: 20,
            ),
          ],
        ),
      ),
      onTap: () {
        _abrirWhatsapp();
      },
    );
  }

  Future<void> _abrirWhatsapp() async {
    final uri = Uri.parse(
      'https://wa.me/5517996420598?text=Olá,%20gostaria%20de%20mais%20informações%20sobre%20seus%20serviços.',
    );

    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    }
  }
}
