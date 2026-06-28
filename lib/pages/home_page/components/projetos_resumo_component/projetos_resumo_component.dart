import 'package:flutter/material.dart';
import 'package:website/core/components/linha_habilidades_component/linha_habilidades_component.dart';
import 'package:website/core/constants/strings.dart';
import 'package:website/core/helper/screen_type_helper.dart';
import 'package:website/pages/home_page/components/projetos_resumo_component/widgets/portfolio_item_widget.dart';
import 'package:website/pages/home_page/home_page_controller.dart';

class ProjetosResumoComponent extends StatefulWidget {
  final HomePageController homePageController;

  const ProjetosResumoComponent({
    super.key,
    required this.homePageController,
  });

  @override
  State<ProjetosResumoComponent> createState() =>
      _ProjetosResumoComponentState();
}

class _ProjetosResumoComponentState extends State<ProjetosResumoComponent> {
  @override
  void initState() {
    widget.homePageController.getPortfolioResumed();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LinhaHabilidadesComponent(
          texto: tituloProjetos,
        ),
        const SizedBox(height: 30),
        Container(
          margin: EdgeInsets.only(left: ScreenTypeHelper.isMobile(context: context)  ? 5 : 50),
          height: ScreenTypeHelper.cardResumeComponentWidth(context: context),
          child: ValueListenableBuilder(
            valueListenable: widget.homePageController.portolioResumed.itens,
            builder: (context, itens, _) {
              return itens.isEmpty
                  ? const SizedBox()
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: itens.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(left: index == itens.length ? 15 : 0),
                          child: PortfolioItemWidget(
                            portfolio: itens[index],
                          ),
                        );
                      },
                    );
            },
          ),
        )
      ],
    );
  }
}
