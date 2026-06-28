import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/constants/color.dart';
import 'package:website/core/constants/images.dart';
import 'package:website/core/constants/strings.dart';
import 'package:website/core/helper/screen_type_helper.dart';

class CarreiraComponent extends StatelessWidget {
  const CarreiraComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AZUL_EXTRA_ESCURO),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AZUL_ESCURO.withValues(alpha: .55),
                      AZUL_EXTRA_ESCURO.withValues(alpha: .35),
                      AZUL_EXTRA_ESCURO.withValues(alpha: .55),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.black.withValues(alpha: .35),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: ScreenTypeHelper.isMobile(context: context)
                  ? _mobileLayout(context)
                  : _webLayout(context),
            ),
          ],
        ),
      ),
    );
  }

  Column _mobileLayout(BuildContext context) {
    return Column(
      children: [
        Text(
          nomeHerrison,
          style: GoogleFonts.audiowide(
            color: AZUL_CLARINHO,
            fontSize: 34,
          ),
        ),
        Text(
          profissao,
          style: GoogleFonts.audiowide(
            color: AZUL_CLARINHO,
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 35),
        Text(
          carreira,
          style: GoogleFonts.audiowide(
            color: AZUL_CLARINHO,
            fontSize: 34,
          ),
        ),
        const SizedBox(height: 35),
        Text(
          sobreMim,
          style: TextStyle(
            color: Colors.white,
            fontSize: ScreenTypeHelper.isMobile(context: context) ? 16 : 22,
            height: 1.6,
          ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 50),
        _lista(
          algunsOutrosConhecimento,
          sobreMimOutrosConhecimentos,
          context,
        ),
        const SizedBox(height: 30),
        _lista(
          algunsProjetosParticipei,
          sobreMimProjetos,
          context,
        ),
        const SizedBox(height: 30),
        Text(
          futuro,
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          aprimorando,
          style: TextStyle(
            color: Colors.white70,
          ),
        )
      ],
    );
  }

  Column _webLayout(BuildContext context) {
    return Column(
      children: [
        Text(
          nomeHerrison,
          style: GoogleFonts.audiowide(
            color: AZUL_CLARINHO,
            fontSize: 34,
          ),
        ),
        Text(
          profissao,
          style: GoogleFonts.audiowide(
            color: AZUL_CLARINHO,
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 35),
        Text(
          carreira,
          style: GoogleFonts.audiowide(
            color: AZUL_CLARINHO,
            fontSize: 34,
          ),
        ),
        const SizedBox(height: 35),
        const Text(
          sobreMim,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _lista(
                algunsOutrosConhecimento,
                sobreMimOutrosConhecimentos,
                context,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Image.asset(
                decoracaoTech,
              ),
            ),
            Expanded(
              child: _lista(
                algunsProjetosParticipei,
                sobreMimProjetos,
                context,
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        Text(
          futuro,
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          aprimorando,
          style: TextStyle(
            color: Colors.white70,
          ),
        )
      ],
    );
  }

  Widget _lista(
    String titulo,
    String texto,
    BuildContext context,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titulo,
          textAlign: TextAlign.center,
          style: GoogleFonts.iceland(
            color: AZUL_CLARINHO,
            fontSize: 22,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Center(
          child: Text(
            texto,
            textAlign: TextAlign.left,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: ScreenTypeHelper.isMobile(context: context) ? 14 : 18,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
