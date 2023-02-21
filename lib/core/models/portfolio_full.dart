import 'package:curriculo_online/core/models/portfolio.dart';

class PortfolioFull extends Portfolio {
  List<Portfolio> portfolios = [];

  PortfolioFull();

  PortfolioFull.fromJson(Map<String, dynamic> json) {
    if(json["projects"] != null){
      json["projects"].forEach((element) {
        portfolios.add(Portfolio.fromJson(element));
      });
    }
  }
}