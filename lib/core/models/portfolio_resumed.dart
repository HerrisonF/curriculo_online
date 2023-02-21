import 'package:curriculo_online/core/models/portfolio.dart';

class PortfolioResumed extends Portfolio {

  List<Portfolio> portfolioResumes = [];

  PortfolioResumed();

  PortfolioResumed.fromJson(Map<String, dynamic> json) {
    if(json["projects"] != null){
      json["projects"].forEach((element) {
        portfolioResumes.add(Portfolio.fromJson(element));
      });
    }
  }
}