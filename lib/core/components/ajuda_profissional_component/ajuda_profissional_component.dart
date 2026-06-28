import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/constants/color.dart';
import 'package:website/core/constants/images.dart';
import 'package:website/core/constants/strings.dart';
import 'package:website/core/helper/screen_type_helper.dart';
import 'package:website/core/widgets/botao_whatsapp_widget.dart';

class AjudaProfissionalComponent extends StatelessWidget {
  const AjudaProfissionalComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenTypeHelper.isMobile(context: context) ? 470 : 150,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: const Color(0xFF040B1E),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: AZUL_EXTRA_CLARO.withValues(alpha: .45),
        ),
      ),
      child: ScreenTypeHelper.isMobile(context: context)
          ? _mobileLayout()
          : _webLayout(),
    );
  }

  Container _mobileLayout() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ajudaProfissional,
            style: GoogleFonts.iceland(
              color: Colors.white,
              fontSize: 26,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 25),
          Expanded(
            flex: 4,
            child: Text(
              souEspecialista,
              style: GoogleFonts.montserrat(
                color: BRANCO.withValues(alpha: 90),
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ),
          const BotaoWhatsappWidget(),
          const SizedBox(height: 25),
          Center(
            child: Image.asset(
              logoArvore,
              width: 90,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }

  Container _webLayout() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      child: Row(
        children: [
          Text(
            ajudaProfissional,
            style: GoogleFonts.iceland(
              color: Colors.white,
              fontSize: 26,
              height: 1.3,
            ),
          ),
          const SizedBox(width: 50),
          Expanded(
            flex: 4,
            child: Text(
              souEspecialista,
              style: GoogleFonts.montserrat(
                color: BRANCO.withValues(alpha: 90),
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(width: 35),
          const BotaoWhatsappWidget(),
          const SizedBox(width: 40),
          Image.asset(
            logoArvore,
            width: 90,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
