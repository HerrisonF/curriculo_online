import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';

///Centralizei a configuração dos icones aqui, para haver troca em apenas um lugar
///e relfletir no resto. Nesse cenário específico, isso é de grande ajuda.
///
///Os callbacks são para funções
///
///O iconSize para definir o tamanho dos icones, já adotando -2 no icone do linkedin
///para deixar a estética dele parecida com o do linkedin.
///
///O atributo de margem, serve para ajustar os espaçamentos entre a apresentação
///vertical e horizontal da Header. A apresentação vertical faz uso false desse
///atributo.
class MySocialMediaWidget extends StatelessWidget {
  final Function linkedinCallback;
  final Function githubCallback;
  final double iconSize;
  final bool margin;

  static const int _valueToEqualizeLinkedinAndGithubIconSize = 2;
  static const Color iconColor = Colors.black;

  const MySocialMediaWidget({
    Key? key,
    required this.linkedinCallback,
    required this.githubCallback,
    this.iconSize = 40,
    this.margin = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.ROW,
        rowMainAxisAlignment:
            margin ? MainAxisAlignment.start : MainAxisAlignment.center,
        children: [
          ResponsiveRowColumnItem(
            child: IconButton(
              onPressed: () {
                linkedinCallback();
              },
              padding: EdgeInsets.zero,
              icon: Icon(
                FontAwesomeIcons.linkedin,
                size: iconSize,
                color: iconColor,
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              child: IconButton(
                onPressed: () {
                  githubCallback();
                },
                padding: EdgeInsets.zero,
                icon: Icon(
                  FontAwesomeIcons.github,
                  size: iconSize - _valueToEqualizeLinkedinAndGithubIconSize,
                  color: iconColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
