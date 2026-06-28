import 'package:flutter/material.dart';
import 'package:website/core/models/portfolio/portfolio_resumed.dart';
import 'package:website/pages/home_page/data/repositories/general_repository.dart';

class PortfolioController {
  final GeneralRepository _generalRepository = GeneralRepository();

  PortfolioResume portolioResumed = PortfolioResume(
    itens: ValueNotifier([]),
  );

  Future<void> getPortfolioResumed() async {
    final PortfolioResume resumeResult =
        await _generalRepository.getPortfolioResumedFromAssets();

    if (resumeResult.itens.value.isNotEmpty) {
      portolioResumed.addItens(resumeResult.itens.value);
    }
  }
}
