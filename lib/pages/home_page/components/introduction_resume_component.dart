import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroductionResumeComponent extends StatelessWidget {
  const IntroductionResumeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.lightBlueAccent.shade100,
      ),
      child: Column(
        children: [
          Text(
            "Iniciei minha carreira como desenvolvedor Delphi, criando soluções para automação e trabalhando em refatorações e vivências em Backend. Meu foco atual é a especialização na plataforma Mobile. ",
            textAlign: TextAlign.justify,
            style: GoogleFonts.mukta(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Outros conhecimentos: React; Firebase, MVC, MVVP, MVP e Clean architecture; Jenkins; Práticas Clean Code; Git/Flow, SCRUM, JIRA, LT. ",
            style: GoogleFonts.mukta(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Alguns projetos em que participei: ",
            style: GoogleFonts.mukta(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "- White label MobileBus (Flutter) - TOTVS \n "
            "- Hospital Albert Einstein (Flutter) - Avanade \n "
            "- Supermercado Mambo Delivery (L.T, Flutter) - Accurate Software \n "
            "- Meu Técnico(Claro, Android) - Accurate Software \n "
            "- Portal LGPD(Claro, React) - Accurate Software \n "
            "- Migração regionalizador OI(OI, Oracle Infrastructure Cloud) - Accurate Software \n "
            "- Integração CIP(CIP, Oracle Cloud) - Accurate Software, \n entre outros. ",
            style: GoogleFonts.mukta(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Minha perspectiva para o futuro é o aprimoramento do meu conhecimento em mobile, qualidade e arquitetura.",
            style: GoogleFonts.mukta(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
