import 'package:flutter/material.dart';
import 'package:website/core/components/menu_topo_component/layout/mobile_menu_layout.dart';
import 'package:website/core/components/menu_topo_component/layout/web_menu_layout.dart';
import 'package:website/core/components/menu_topo_component/menu_topo_component_controller.dart';
import 'package:website/core/constants/color.dart';
import 'package:website/core/helper/screen_type_helper.dart';
import 'package:website/core/inject/inject.dart';

class MenuTopoComponent extends StatelessWidget {
  MenuTopoComponent({
    super.key,
  });

  final MenuTopoComponentController menuTopoComponentController =
      getIt<MenuTopoComponentController>();

  @override
  Widget build(BuildContext context) {
    final double height = ScreenTypeHelper.menuHeight(context: context);
    return Container(
      height: height,
      padding: const EdgeInsets.only(right: 15, left: 15),
      decoration: const BoxDecoration(
        color: AZUL_ESCURO,
      ),
      child: ScreenTypeHelper.isMobile(context: context)
          ? MobileMenuLayout(
              pageSize: height,
              controller: menuTopoComponentController,
            )
          : WebMenuLayout(
              pageSize: height,
              controller: menuTopoComponentController,
            ),
    );
  }
}
