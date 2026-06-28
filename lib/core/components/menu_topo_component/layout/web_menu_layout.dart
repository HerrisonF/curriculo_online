import 'package:flutter/material.dart';
import 'package:website/core/components/menu_topo_component/menu_topo_component_controller.dart';
import 'package:website/core/components/menu_topo_component/widgets/menu_botoes.dart';
import 'package:website/core/components/menu_topo_component/widgets/menu_redes_sociais.dart';
import 'package:website/core/widgets/botao_whatsapp_widget.dart';
import 'package:website/core/widgets/logo.dart';

class WebMenuLayout extends StatelessWidget {
  final double pageSize;
  final MenuTopoComponentController controller;

  const WebMenuLayout({
    super.key,
    required this.pageSize,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Logo(pageSize: pageSize),
        const MenuRedesSociais(),
        const SizedBox(width: 50),
        Expanded(
          flex: 5,
          child: SizedBox(
            height: 60,
            child: MenuBotoes(
              controller: controller,
            ),
          ),
        ),
        const SizedBox(width: 50),
        const Expanded(
          flex: 3,
          child: BotaoWhatsappWidget(),
        ),
      ],
    );
  }
}
