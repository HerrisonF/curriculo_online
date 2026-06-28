import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:website/core/components/copy_ritght_component/copy_right_component.dart';
import 'package:website/core/components/menu_topo_component/menu_topo_component.dart';
import 'package:website/core/constants/color.dart';
import 'package:website/core/helper/screen_type_helper.dart';
import 'package:website/pages/projetos_page/portfolio_controller.dart';
import 'package:website/pages/projetos_page/widgets/projeto_detalhe_widget.dart';

class ProjetosPage extends StatefulWidget {
  const ProjetosPage({super.key});

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
          MenuTopoComponent(),
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
                            return Column(
                              children: [
                                ProjetoDetalheWidget(portfolio: itens[index]),
                                index + 1 == itens.length
                                    ? CopyRightComponent()
                                    : SizedBox(),
                              ],
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
