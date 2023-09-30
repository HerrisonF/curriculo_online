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
        borderRadius: BorderRadius.circular(4),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(color: Colors.black12, offset: Offset(2, 2), blurRadius: 2),
        ],
      ),
      child: Column(
        children: [
          Text(
            "Iniciei minha carreira com desenvolvimento Delphi, onde criei soluções "
            "para automações comerciais, refatorando e tendo vivências em Backend. "
            "Apesar do inicio, meu foco atual é plataforma Mobile. Na minha carreira, "
            "já passei por empresas onde pude melhorar minhas habilidades pessoais, de desenvolvimento, "
            "tato ao cliente final e trabalho em equipe. Já tive também a oportunidade de experiênciar"
            "a liderança de uma equipe em um projeto. Em outras empresas, "
            "assumi a responsabilidade para criar arquiteturas de softwares "
            "mobile e prototipações de aplicações para clientes finais. Nem todos os projetos que participei"
            "estão aqui em imagens, pois se tratavam de aplicações mais internas que não vieram a público.",
            textAlign: TextAlign.justify,
            style: GoogleFonts.montserrat(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Alguns outros conhecimentos".toUpperCase(),
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "React; Firebase, MVC, MVVP, MVP, SOLID e Arquitetura Limpa; Jenkins; Figma; Clean Code; Git/Flow, SCRUM, JIRA, LT. ",
            style: GoogleFonts.montserrat(
              fontSize: 18,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Alguns projetos em que participei".toUpperCase(),
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "- Projeto White label MobileBus(Flutter), Checkin(Nativo), Agência Digital (Nativo), MovingTech(FLUTTER WEB/MOBILE) - TOTVS \n "
            "- Hospital Albert Einstein (Flutter) - Avanade \n "
            "- Supermercado Mambo Delivery (L.T, Flutter) - Accurate Software \n "
            "- Meu Técnico(Claro, Android) - Accurate Software \n "
            "- Portal LGPD(Claro, React) - Accurate Software \n "
            "- Migração regionalizador OI(OI, Oracle Infrastructure Cloud) - Accurate Software \n "
            "- Integração CIP(CIP, Oracle Cloud) - Accurate Software, \n entre outros. ",
            style: GoogleFonts.montserrat(
              fontSize: 18,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Minha perspectiva para o futuro é o aprimoramento do meu conhecimento em mobile, qualidade e arquitetura.",
            style: GoogleFonts.montserrat(
                fontSize: 20, fontWeight: FontWeight.w600),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
