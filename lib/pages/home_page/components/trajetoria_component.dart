import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/components/linha_habilidades_component/linha_habilidades_component.dart';
import 'package:website/core/constants/color.dart';
import 'package:website/core/constants/images.dart';
import 'package:website/core/constants/strings.dart';
import 'package:website/core/helper/screen_type_helper.dart';
import 'package:website/pages/home_page/home_page_controller.dart';

class TrajetoriaComponent extends StatefulWidget {
  final HomePageController controller;

  const TrajetoriaComponent({
    super.key,
    required this.controller,
  });

  @override
  State<TrajetoriaComponent> createState() => _TrajetoriaComponentState();
}

class _TrajetoriaComponentState extends State<TrajetoriaComponent> {
  @override
  void initState() {
    widget.controller.getCarrerResumed();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: ScreenTypeHelper.trejtoriaAlturaComponent(context: context),
      child: Column(
        children: [
          const LinhaHabilidadesComponent(
            texto: tituloTrajetoria,
          ),
          const SizedBox(height: 30),
          ScreenTypeHelper.isMobile(context: context)
              ? _mobileLayout()
              : _webLayout(),
        ],
      ),
    );
  }

  Column _webLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _trajetoria(),
        Container(
          margin: const EdgeInsets.only(left: 50, right: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                decoracaoTech,
                color: AZUL_CLARO.withValues(alpha: 0.8),
                fit: BoxFit.fill,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 450,
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 35),
                  margin: const EdgeInsets.only(top: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      foto_mesa,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: _textoDirecionamento(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column _mobileLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _trajetoria(),
        _textoDirecionamento(),
      ],
    );
  }

  Widget _trajetoria() {
    return Column(
      children: [
        Container(
          decoration: ScreenTypeHelper.isMobile(context: context)
              ? const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    opacity: 0.35,
                    image: AssetImage(
                      foto_mesa,
                    ),
                  ),
                )
              : null,
          margin: const EdgeInsets.only(left: 35),
          height: 120,
          child: ValueListenableBuilder(
            valueListenable: widget.controller.carreiraResumed.itens,
            builder: (context, itens, child) {
              return itens.isEmpty
                  ? const SizedBox()
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: itens.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 15, right: 15),
                          child: Row(
                            children: [
                              const SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    itens[index].title,
                                    style: GoogleFonts.iceland(
                                      color: AZUL_BOLINHA,
                                      fontSize: 24,
                                    ),
                                  ),
                                  Text(
                                    itens[index].subTitle,
                                    style: GoogleFonts.iceland(
                                      color: BRANCO,
                                      fontSize: 22,
                                    ),
                                  ),
                                  Text(
                                    itens[index].duration,
                                    style: GoogleFonts.montserrat(
                                      color: BRANCO,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    );
            },
          ),
        )
      ],
    );
  }

  Widget _textoDirecionamento() {
    return Container(
      margin: EdgeInsets.only(
        left: ScreenTypeHelper.isMobile(context: context) ? 15 : 0,
        top: 15,
        right: 35,
      ),
      child: Column(
        crossAxisAlignment: ScreenTypeHelper.isMobile(context: context)
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Text(
            direcao,
            style: GoogleFonts.iceland(
              color: AZUL_BOLINHA,
              fontSize: 30,
            ),
          ),
          Text(
            direcaoDescricao,
            style: GoogleFonts.montserrat(
              color: BRANCO,
              fontSize: 20,
            ),
            textAlign: ScreenTypeHelper.isMobile(context: context)
                ? TextAlign.center
                : null,
          ),
          const SizedBox(height: 30),
          Text(
            conhecimentoSolido,
            style: GoogleFonts.iceland(
              color: AZUL_BOLINHA,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            conhecimentoSolidoDescricao,
            style: GoogleFonts.montserrat(
              color: BRANCO,
              fontSize: 20,
            ),
            textAlign: ScreenTypeHelper.isMobile(context: context)
                ? TextAlign.center
                : null,
          ),
        ],
      ),
    );
  }
}
