import 'package:flutter/material.dart';
import 'package:website/core/components/menu_topo_component/menu_topo_component_controller.dart';
import 'package:website/core/components/menu_topo_component/widgets/menu_botoes.dart';
import 'package:website/core/helper/screen_type_helper.dart';

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
        SizedBox(height: ScreenTypeHelper.isMobile(context: context) ? 5 : 25),
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
