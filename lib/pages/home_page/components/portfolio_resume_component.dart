import 'package:curriculo_online/core/models/portfolio_resumed.dart';
import 'package:curriculo_online/pages/home_page/home_page_controller.dart';
import 'package:curriculo_online/pages/home_page/widgets/portfolio_item_widget.dart';
import 'package:curriculo_online/pages/home_page/widgets/shimmer_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PortfolioResumeComponent extends StatefulWidget {
  final bool isHorizontalOrientation;

  const PortfolioResumeComponent({
    Key? key,
    this.isHorizontalOrientation = false,
  }) : super(key: key);

  @override
  State<PortfolioResumeComponent> createState() =>
      _PortfolioResumeComponentState();
}

class _PortfolioResumeComponentState extends State<PortfolioResumeComponent> {
  final HomePageController homePageController =
      GetIt.I.get<HomePageController>();

  @override
  void initState() {
    homePageController.getPortfolioResumed();
    homePageController.getCarrerFull();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 500, maxHeight: 1000),
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.COLUMN,
        children: [
          ResponsiveRowColumnItem(
            columnFlex: 1,
            child: Container(
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              child: const Text(
                "Portfólio",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            columnFlex: 10,
            child: ValueListenableBuilder(
              valueListenable: homePageController.portolioResumed,
              builder: (context, portfolio, widget) {
                return portfolio.portfolioResumes.isEmpty
                    ? _shimmerLoading()
                    : _portfolioGrid(portfolio);
              },
            ),
          ),
          ResponsiveRowColumnItem(
            columnFlex: 1,
            child: InkWell(
              onTap: () {
                homePageController.onSeeMoreProjectsTap(context);
              },
              child: _buttonSeeMore(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buttonSeeMore() {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: Colors.cyanAccent,
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 20,
      ),
      child: const Text(
        "Ver mais projetos e detalhes",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _portfolioGrid(PortfolioResumed portfolio) {
    return widget.isHorizontalOrientation
        ? _grid(portfolio)
        : _listView(portfolio);
  }

  Widget _grid(PortfolioResumed portfolio) {
    return ResponsiveGridView.builder(
      itemCount: portfolio.portfolioResumes.length,
      gridDelegate: const ResponsiveGridDelegate(
        maxCrossAxisExtent: 500,
        minCrossAxisExtent: 400,
      ),
      itemBuilder: (context, index) {
        return PortfolioItemWidget(
          portfolio: portfolio.portfolioResumes[index],
        );
      },
    );
  }

  Widget _listView(PortfolioResumed portfolio) {
    return ListView.builder(
      itemCount: portfolio.portfolioResumes.length,
      itemBuilder: (context, index) {
        return PortfolioItemWidget(
          portfolio: portfolio.portfolioResumes[index],
        );
      },
    );
  }

  ShimmerLoadingWidget _shimmerLoading() {
    return ShimmerLoadingWidget(
      howManyChilds: 3,
      child: Container(
        width: 500,
        height: 400,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
