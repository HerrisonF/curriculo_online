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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Text(
              "HISTÓRIA",
              textAlign: TextAlign.justify,
              style: GoogleFonts.montserrat(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "Iniciei minha carreira com desenvolvimento Delphi, onde contribui para criar soluções "
            "para automações comerciais, refatorando e tendo vivências em Backend. "
            " Apesar do inicio, meu foco atual é a plataforma Mobile. \n Na minha carreira, "
            "já passei por empresas onde pude melhorar minhas habilidades pessoais, desenvolvimento, "
            "tato ao cliente final e trabalho em equipe. Já tive também a oportunidade de experiênciar"
            "a liderança de uma equipe em um projeto. \n Em outras empresas, "
            "assumi a responsabilidade para criar arquiteturas de softwares "
            "mobile e prototipações de aplicações para clientes finais. \n Nem todos os projetos que participei"
            "estão aqui em imagens, pois se tratavam de aplicações mais internas que não vieram a público em lojas, "
            "então opto por não expor.",
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
            "React - Firebase - MVC - MVVP - MVP - SOLID - Arquitetura Limpa - Jenkins; \nFigma - Clean Code - Git/Flow - SCRUM - JIRA - LT(Liderança Técnica). ",
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
            "- Projeto White label MobileBus(Flutter), Checkin(Nativo e FLUTTER), Agência Digital (Nativo), Agência Digital (Nativo), MovingTech(FLUTTER WEB e MOBILE) - TOTVS \n "
            "- Hospital Albert Einstein (Flutter) - Avanade \n "
            "- Supermercado Mambo Delivery (L.T, Flutter) - Accurate Software \n "
            "- Aplicativo FONTE (Flutter) - Freelancer \n"
            "- Meu Técnico(Claro, Android) - Accurate Software \n "
            "- Portal LGPD(Claro, React) - Accurate Software \n "
            "- Migração regionalizador OI(OI, Oracle Infrastructure Cloud) - Accurate Software entre outros. \n",
            style: GoogleFonts.montserrat(
              fontSize: 18,
            ),
            textAlign: TextAlign.left,
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
