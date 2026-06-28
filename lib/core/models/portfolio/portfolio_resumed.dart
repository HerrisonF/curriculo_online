import 'package:flutter/foundation.dart';
import 'package:website/core/models/portfolio/portfolio.dart';

class PortfolioResume {
  final ValueNotifier<List<Portfolio>> itens;

  PortfolioResume({
    required this.itens,
  });

  void addItens(List<Portfolio> itensResume){
    itens.value.clear();
    itens.value.addAll(itensResume);
    itens.notifyListeners();
  }

  factory PortfolioResume.fromJson(Map<String, dynamic> json) {
    return PortfolioResume(
      itens: ValueNotifier<List<Portfolio>>(
        (json['projects'] as List<dynamic>? ?? [])
            .map((e) => Portfolio.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
  }
}