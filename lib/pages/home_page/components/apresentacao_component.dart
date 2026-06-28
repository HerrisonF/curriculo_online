import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/components/menu_topo_component/widgets/menu_redes_sociais.dart';
import 'package:website/core/constants/color.dart';
import 'package:website/core/constants/images.dart';
import 'package:website/core/constants/strings.dart';
import 'package:website/core/helper/screen_type_helper.dart';
import 'package:website/core/widgets/botao_whatsapp_widget.dart';
import 'package:website/core/widgets/efeito_blur_text_widget.dart';

class ApresentacaoComponent extends StatelessWidget {
  const ApresentacaoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 35, right: 35, top: 25),
      child: ScreenTypeHelper.isMobile(context: context)
          ? _mobileLayout(context)
          : _webLayout(context),
    );
  }

  Column _webLayout(BuildContext context) {
    return Column(
      children: [
        const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                EfeitoBlurTextWidget(text: nomeHerrison, fontSize: 96),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [EfeitoBlurTextWidget(text: profissao, fontSize: 48)],
            ),
          ],
        ),
        const SizedBox(height: 15),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 35),
          height: 300,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(),
                    Text(
                      apresentacao1,
                      style: GoogleFonts.montserrat(
                        color: BRANCO,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      apresentacao2,
                      style: GoogleFonts.montserrat(
                        color: BRANCO,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      apresentacao3,
                      style: GoogleFonts.montserrat(
                        color: BRANCO,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Image.asset(mobileMarcas, fit: BoxFit.contain),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(),
                    Text(
                      apresentacao4,
                      style: GoogleFonts.montserrat(
                        color: BRANCO,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      apresentacao5,
                      style: GoogleFonts.montserrat(
                        color: BRANCO,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      apresentacao6,
                      style: GoogleFonts.montserrat(
                        color: BRANCO,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 45),
        Text(
          acredito,
          style: GoogleFonts.montserrat(color: BRANCO, fontSize: 16),
        ),
        const SizedBox(height: 35),
        BotaoWhatsappWidget(),
        const SizedBox(height: 35),
        MenuRedesSociais(),
      ],
    );
  }

  Column _mobileLayout(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 35),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [EfeitoBlurTextWidget(text: nomeHerrison, fontSize: 38)],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [EfeitoBlurTextWidget(text: profissao, fontSize: 22)],
        ),
        const SizedBox(height: 30),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 250,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Image.asset(mobileMarcas, fit: BoxFit.contain)),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Text(
          acredito,
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(color: BRANCO, fontSize: 16),
        ),
        const SizedBox(height: 15),
        BotaoWhatsappWidget(),
        const SizedBox(height: 35),
        MenuRedesSociais(),
      ],
    );
  }
}
