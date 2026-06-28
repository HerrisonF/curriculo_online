import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:website/core/components/ajuda_profissional_component/ajuda_profissional_component.dart';
import 'package:website/core/components/copy_ritght_component/copy_right_component.dart';
import 'package:website/core/components/menu_topo_component/menu_topo_component.dart';
import 'package:website/core/constants/color.dart';
import 'package:website/pages/home_page/components/apresentacao_component.dart';
import 'package:website/pages/home_page/components/habilidades_component.dart';
import 'package:website/pages/home_page/components/projetos_resumo_component/projetos_resumo_component.dart';
import 'package:website/pages/home_page/components/trajetoria_component.dart';
import 'package:website/pages/home_page/home_page_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final HomePageController controller = GetIt.I.get<HomePageController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AZUL_ESCURO,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MenuTopoComponent(),
            const ApresentacaoComponent(),
            const SizedBox(height: 60),
            const HabilidadesComponent(),
            const SizedBox(height: 60),
            ProjetosResumoComponent(
              homePageController: controller,
            ),
            const SizedBox(height: 80),
            TrajetoriaComponent(
              controller: controller,
            ),
            const SizedBox(height: 60),
            const AjudaProfissionalComponent(),
            const CopyRightComponent(),
          ],
        ),
      ),
    );
  }
}
