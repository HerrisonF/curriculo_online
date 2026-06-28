import 'package:flutter/material.dart';
import 'package:website/core/components/menu_topo_component/menu_topo_component_controller.dart';
import 'package:website/core/components/menu_topo_component/widgets/menu_botoes.dart';
import 'package:website/core/components/menu_topo_component/widgets/menu_redes_sociais.dart';
import 'package:website/core/widgets/botao_whatsapp_widget.dart';
import 'package:website/core/widgets/logo.dart';

class MobileMenuLayout extends StatelessWidget {
  final double pageSize;
  final MenuTopoComponentController controller;

  const MobileMenuLayout({
    super.key,
    required this.pageSize,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 25),
        Container(
          padding: const EdgeInsets.only(left: 35, right: 15),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Logo(pageSize: 85),
              Column(
                children: [
                  SizedBox(
                    width: 200,
                    child: MenuRedesSociais(),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    width: 200,
                    child: BotaoWhatsappWidget(),
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 25),
        SizedBox(
          height: 75,
          child: MenuBotoes(
            controller: controller,
          ),
        ),
      ],
    );
  }
}
