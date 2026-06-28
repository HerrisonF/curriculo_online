import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/components/menu_topo_component/menu_topo_component_controller.dart';
import 'package:website/core/constants/color.dart';
import 'package:website/core/constants/strings.dart';
import 'package:website/core/routes/routes_path.dart';

class MenuBotoes extends StatelessWidget {
  final MenuTopoComponentController controller;

  const MenuBotoes({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ValueListenableBuilder(
          valueListenable: controller.pathAtual,
          builder: (context, pathAtual, _) {
            return Expanded(
              child: botaoLayout(
                titulo: botaoInicio,
                funcao: () {
                  context.go(RoutesPath.inicio);
                },
                isSelected: pathAtual == RoutesPath.inicio,
              ),
            );
          },
        ),
        ValueListenableBuilder(
          valueListenable: controller.pathAtual,
          builder: (context, pathAtual, _) {
            return Expanded(
              child: botaoLayout(
                titulo: botaoSobreMim,
                funcao: () {
                  context.go(RoutesPath.sobreMim);
                },
                isSelected: pathAtual == RoutesPath.sobreMim,
              ),
            );
          },
        ),
        ValueListenableBuilder(
          valueListenable: controller.pathAtual,
          builder: (context, pathAtual, _) {
            return Expanded(
              child: botaoLayout(
                titulo: botaoProjetos,
                funcao: () {
                  context.go(RoutesPath.projetos);
                },
                isSelected: pathAtual == RoutesPath.projetos,
              ),
            );
          },
        ),
      ],
    );
  }

  Widget botaoLayout({
    required String titulo,
    required Function funcao,
    required bool isSelected,
  }) {
    return InkWell(
      onTap: () {
        funcao();
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isSelected ? AZUL_BORDA : Colors.transparent,
            )
          )
        ),
        child: Text(
          titulo,
          textAlign: TextAlign.center,
          style: GoogleFonts.audiowide(
            fontSize: 14,
            color: BRANCO,
          ),
        ),
      ),
    );
  }
}
