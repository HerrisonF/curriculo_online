import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroductionResumeComponent extends StatelessWidget {
  const IntroductionResumeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(color: Colors.black12, offset: Offset(2, 2), blurRadius: 2),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Text(
              "CARREIRA",
              textAlign: TextAlign.justify,
              style: GoogleFonts.montserrat(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "Sou Analista de Sistemas e meu foco de carreira está no desenvolvimento de Software Mobile.\n"
            "Como desenvolvedor mobile, tenho experiência em Android, Flutter, IOs. \n"
            "Também tenho conhecimento em arquitetura de software para melhor "
            "desenvolvimento, manutenção e escalabilidade. \n"
            "Passei por empresas onde pude melhorar minhas habilidades pessoais, de desenvolvimento, "
            "tato ao cliente final e trabalho em equipe. \n"
            "Também já tive a oportunidade de experiênciar "
            "a liderança de um time em um projeto. \n Em algumas empresas, "
            "assumi a responsabilidade para criar arquiteturas de softwares "
            "mobile e prototipações de aplicações para clientes finais. \n Nem todos os projetos que participei"
            "estão aqui em imagens, pois se tratavam de aplicações mais internas que não vieram a público em lojas, "
            "então opto por não expor.",
            textAlign: TextAlign.left,
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
            "- MVC, MVP, MVVM, Clean arch, Clean Code, SOLID, Design patterns, Testes. \n"
            "- Git, MicroApps, GraphQL, MultiRepo, CI/CD, Jenkins, Payment SDKS; \n"
            "- Flutter, Android, IOs, Java. \n"
            "- Figma, SCRUM, JIRA",
            style: GoogleFonts.montserrat(
              fontSize: 18,
            ),
            textAlign: TextAlign.left,
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
            "- Projeto White Label MobileBus(Flutter), Checkin(Nativo e FLUTTER), "
            "Agência Digital (Nativo), Venda Embarcada (Nativo), "
            "MovingTech App/Backoffice(FLUTTER), "
            "Bolivariano App/Backoffice (FLUTTER WEB e MOBILE) -> TOTVS \n"
            "- Hospital Albert Einstein (Flutter) -> Avanade \n"
            "- Supermercado Mambo Delivery (L.T, Flutter) -> Accurate Software \n"
            "- Meu Técnico(Claro, Android) -> Accurate Software \n"
            "- Portal LGPD(Claro, React) -> Accurate Software \n"
            "- Migração regionalizador OI(OI, Oracle Infrastructure Cloud) -> Accurate Software",
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
