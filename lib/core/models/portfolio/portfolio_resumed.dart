import 'package:curriculo_online/core/models/portfolio/portfolio.dart';

class PortfolioResumed extends Portfolio {
  List<Portfolio> portfolioResumes;

  PortfolioResumed({
    this.portfolioResumes = const [],
  });

  factory PortfolioResumed.fromJson(Map<String, dynamic> json) {
    final projects = json['projects'] as List<dynamic>?;

    return PortfolioResumed(
      portfolioResumes: projects != null
          ? projects
          .map((e) => Portfolio.fromJson(Map<String, dynamic>.from(e)))
          .toList()
          : [],
    );
  }
}
