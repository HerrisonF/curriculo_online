import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/components/linha_habilidades_component/circulo_point_widget.dart';
import 'package:website/core/constants/color.dart';
import 'package:website/core/helper/screen_type_helper.dart';

class LinhaHabilidadesComponent extends StatelessWidget {
  final String texto;

  const LinhaHabilidadesComponent({
    super.key,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 25),
        const CirculoPointWidget(),
        const SizedBox(width: 15),
        Text(
          texto,
          style: GoogleFonts.iceland(
            color: BRANCO,
            fontSize: ScreenTypeHelper.isMobile(context: context) ? 18 : 20,
          ),
        ),
        const SizedBox(width: 15),
        Container(
          height: 2,
          color: AZUL_MAIS_CLARO,
        ),
        const SizedBox(width: 15),
      ],
    );
  }
}
