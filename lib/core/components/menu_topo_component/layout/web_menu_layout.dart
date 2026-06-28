import 'package:flutter/material.dart';
import 'package:website/core/components/menu_topo_component/menu_topo_component_controller.dart';
import 'package:website/core/components/menu_topo_component/widgets/menu_botoes.dart';

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
        Expanded(
          child: MenuBotoes(
            controller: controller,
          ),
        ),
      ],
    );
  }
}
