import 'package:curriculo_online/core/models/portfolio/portfolio.dart';

class PortfolioFull extends Portfolio {
  List<Portfolio> portfolios;

  PortfolioFull({
    this.portfolios = const [],
  });

  factory PortfolioFull.fromJson(Map<String, dynamic> json) {
    final projects = json['projects'] as List<dynamic>?;

    return PortfolioFull(
      portfolios: projects != null
          ? projects
          .map((e) => Portfolio.fromJson(Map<String, dynamic>.from(e)))
          .toList()
          : [],
    );
  }
}
