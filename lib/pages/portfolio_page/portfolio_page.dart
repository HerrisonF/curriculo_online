import 'package:curriculo_online/core/models/portfolio_full.dart';
import 'package:curriculo_online/pages/portfolio_page/portfolio_controller.dart';
import 'package:curriculo_online/pages/portfolio_page/widgets/portfolio_full_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_framework/responsive_row_column.dart';

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
              padding: const EdgeInsets.only(top: 50),
              height: 100,
              child: InkWell(
                onTap: (){
                  portfolioController.goBack(context);
                },
                overlayColor: MaterialStateColor.resolveWith(
                      (states) => Colors.transparent,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.arrow_back),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Text(
                        "Voltar",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            columnFlex: 1,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: ValueListenableBuilder(
                valueListenable: portfolioController.portfolioFull,
                builder: (context, portfolio, widget) {
                  return
                    portfolio.portfolios.isEmpty
                      ? _shimmerLoading()
                      : _portfolioGrid(portfolio);
                },
              ),
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
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(16),
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
