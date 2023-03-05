import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroductionResumeComponent extends StatelessWidget {
  const IntroductionResumeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              color: Colors.black12,
              offset: Offset(2, 2),
            blurRadius: 2
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            "Iniciei minha carreira como desenvolvedor Delphi, criando soluções para automação e refatorações com vivências em Backend. Meu foco atual é a especialização na plataforma Mobile. Já conto com experiência"
            "em liderança de equipes, arquitetura de softwares mobile e prototipação de aplicações para cliente final.",
            textAlign: TextAlign.justify,
            style: GoogleFonts.lato(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Outros conhecimentos: React; Firebase, MVC, MVVP, MVP e Clean architecture; Jenkins; Figma; Clean Code; Git/Flow, SCRUM, JIRA, LT. ",
            style: GoogleFonts.lato(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Alguns projetos em que participei: ",
            style: GoogleFonts.lato(
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
            style: GoogleFonts.lato(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Minha perspectiva para o futuro é o aprimoramento do meu conhecimento em mobile, qualidade e arquitetura.",
            style: GoogleFonts.lato(
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),
          ),
        ],
      ),
    );
  }
}
