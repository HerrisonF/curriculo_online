import 'package:flutter/material.dart';
import 'package:website/core/components/ajuda_profissional_component/ajuda_profissional_component.dart';
import 'package:website/core/components/copy_ritght_component/copy_right_component.dart';
import 'package:website/core/components/menu_topo_component/menu_topo_component.dart';
import 'package:website/core/constants/color.dart';
import 'package:website/core/helper/screen_type_helper.dart';
import 'package:website/core/inject/inject.dart';
import 'package:website/pages/sobre_mim_page/components/carreira_component.dart';
import 'package:website/pages/sobre_mim_page/components/sobre_mim_trajetoria_component.dart';
import 'package:website/pages/sobre_mim_page/sobre_mim_page_controller.dart';

class SobreMimPage extends StatelessWidget {
  final SobreMimPageController _controller = getIt<SobreMimPageController>();

  SobreMimPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AZUL_ESCURO,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MenuTopoComponent(),
            const CarreiraComponent(),
            ScreenTypeHelper.isMobile(context: context) ? const SizedBox() : SobreMimTrajetoriaComponent(
              controller: _controller,
            ),
            SizedBox(height: 40),
            const AjudaProfissionalComponent(),
            const CopyRightComponent(),
          ],
        ),
      ),
    );
  }
}
