import 'package:curriculo_online/core/models/portfolio_full.dart';
import 'package:curriculo_online/pages/portfolio_page/portfolio_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PortfolioController {

  final PortfolioRepository _portfolioRepository = PortfolioRepository();

  ValueNotifier<PortfolioFull> portfolioFull =
  ValueNotifier<PortfolioFull>(PortfolioFull());

  getPortfolioFull() {
    _portfolioRepository
        .getPortfolioFullFromAssets()
        .then((value) => portfolioFull.value = value);
  }

  goBack(BuildContext context){
    if(context.canPop()){
      context.go('/');
    }
  }

}