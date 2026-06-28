import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:website/core/components/menu_topo_component/menu_topo_component_controller.dart';
import 'package:website/core/components/menu_topo_component/widgets/menu_botoes.dart';
import 'package:website/core/constants/color.dart';
import 'package:website/core/helper/screen_type_helper.dart';
import 'package:website/core/inject/inject.dart';
import 'package:website/pages/projetos_page/portfolio_controller.dart';
import 'package:website/pages/projetos_page/widgets/projeto_detalhe_widget.dart';

class ProjetosPage extends StatefulWidget {
  const ProjetosPage({Key? key}) : super(key: key);

  @override
  State<ProjetosPage> createState() => _ProjetosPageState();
}

class _ProjetosPageState extends State<ProjetosPage> {
  final PortfolioController portfolioController = GetIt.I
      .get<PortfolioController>();

  @override
  void initState() {
    portfolioController.getPortfolioResumed();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AZUL_ESCURO,
      body: Column(
        children: [
          SizedBox(
            height: 75,
            child: MenuBotoes(controller: getIt<MenuTopoComponentController>()),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                left: ScreenTypeHelper.isMobile(context: context) ? 5 : 25,
                right: ScreenTypeHelper.isMobile(context: context) ? 5 : 25,
              ),
              child: ValueListenableBuilder(
                valueListenable: portfolioController.portolioResumed.itens,
                builder: (context, itens, _) {
                  return itens.isEmpty
                      ? const SizedBox()
                      : ListView.builder(
                          itemCount: itens.length,
                          itemBuilder: (context, index) {
                            return ProjetoDetalheWidget(
                              portfolio: itens[index],
                            );
                          },
                        );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
