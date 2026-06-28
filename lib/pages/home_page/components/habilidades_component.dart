import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/core/components/linha_habilidades_component/linha_habilidades_component.dart';
import 'package:website/core/constants/color.dart';
import 'package:website/core/constants/strings.dart';
import 'package:website/core/helper/screen_type_helper.dart';

class HabilidadesComponent extends StatelessWidget {
  const HabilidadesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LinhaHabilidadesComponent(
          texto: tituloHabilides,
        ),
        const SizedBox(height: 45),
        ScreenTypeHelper.isMobile(context: context)
            ? _mobileLayout(context)
            : _webLayout(context),
      ],
    );
  }

  Widget _mobileLayout(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _circuloHabilidades(
                icon: FontAwesomeIcons.flutter,
                texto: habilidadeFlutter,
              ),
              _linhaDivisoria(width: 25),
              _circuloHabilidades(
                icon: FontAwesomeIcons.android,
                texto: habilidadeAndroid,
              ),
              _linhaDivisoria(width: 25),
              _circuloHabilidades(
                icon: FontAwesomeIcons.apple,
                texto: habilidadeIOS,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _circuloHabilidades(
                icon: FontAwesomeIcons.java,
                texto: habilidadeJava,
              ),
              _linhaDivisoria(width: 25),
              _circuloHabilidades(
                icon: FontAwesomeIcons.figma,
                texto: habilidadeFigma,
              ),
              _linhaDivisoria(width: 25),
              _circuloHabilidades(
                icon: FontAwesomeIcons.fireFlameCurved,
                texto: habilidadeFirebase,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _circuloHabilidades(
                icon: FontAwesomeIcons.database,
                texto: habilidadeSUPABASE,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _webLayout(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _circuloHabilidades(
              icon: FontAwesomeIcons.flutter,
              texto: habilidadeFlutter,
            ),
            _linhaDivisoria(),
            _circuloHabilidades(
              icon: FontAwesomeIcons.android,
              texto: habilidadeAndroid,
            ),
            _linhaDivisoria(),
            _circuloHabilidades(
              icon: FontAwesomeIcons.apple,
              texto: habilidadeIOS,
            ),
            _linhaDivisoria(),
            _circuloHabilidades(
              icon: FontAwesomeIcons.java,
              texto: habilidadeJava,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _circuloHabilidades(
              icon: FontAwesomeIcons.figma,
              texto: habilidadeFigma,
            ),
            _linhaDivisoria(),
            _circuloHabilidades(
              icon: FontAwesomeIcons.fireFlameCurved,
              texto: habilidadeFirebase,
            ),
            _linhaDivisoria(),
            _circuloHabilidades(
              icon: FontAwesomeIcons.database,
              texto: habilidadeSUPABASE,
            ),
          ],
        )
      ],
    );
  }

  Widget _circuloHabilidades({
    required String texto,
    required FaIconData icon,
  }) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: AZUL_MAIS_CLARO,
            ),
          ),
          child: Center(
            child: FaIcon(
              icon,
              color: BRANCO,
              size: 40,
            ),
          ),
        ),
        Text(
          texto,
          style: GoogleFonts.iceland(
            color: BRANCO,
            fontSize: 22,
          ),
        )
      ],
    );
  }

  Widget _linhaDivisoria({
    double width = 50,
  }) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15, bottom: 22),
      width: width,
      height: 1,
      color: BRANCO,
    );
  }
}
