import 'package:curriculo_online/core/models/portfolio/portfolio_full.dart';
import 'package:curriculo_online/pages/portfolio_page/portfolio_controller.dart';
import 'package:curriculo_online/pages/portfolio_page/widgets/portfolio_full_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../home_page/widgets/shimmer_loading_widget.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  final PortfolioController portfolioController =
      GetIt.I.get<PortfolioController>();

  @override
  void initState() {
    portfolioController.getPortfolioFull();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.COLUMN,
        children: [
          ResponsiveRowColumnItem(
            child: Container(
              margin: const EdgeInsets.only(top: 50, bottom: 10),
              height: 60,
              child: InkWell(
                onTap: () {
                  portfolioController.goBack(context);
                },
                overlayColor: WidgetStateColor.resolveWith(
                  (states) => Colors.transparent,
                ),
                child: Container(
                  margin: const EdgeInsets.only(left: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                      Text(
                        "VOLTAR",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            columnFlex: 1,
            child: ValueListenableBuilder(
              valueListenable: portfolioController.portfolioFull,
              builder: (context, portfolio, widget) {
                return portfolio.portfolios.isEmpty
                    ? _shimmerLoading()
                    : _portfolioGrid(portfolio);
              },
            ),
          )
        ],
      ),
    );
  }

  ShimmerLoadingWidget _shimmerLoading() {
    return ShimmerLoadingWidget(
      howManyChilds: 4,
      verticalDirection: true,
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }

  Widget _portfolioGrid(PortfolioFull portfolioFull) {
    return ListView.builder(
      itemCount: portfolioFull.portfolios.length,
      itemBuilder: (context, index) {
        return PortfolioFullItemWidget(
          portfolio: portfolioFull.portfolios[index],
        );
      },
    );
  }
}
