import 'package:flutter/material.dart';
import 'package:website/core/models/carreira/carrer_full.dart';
import 'package:website/core/models/portfolio/portfolio_resumed.dart';
import 'package:website/pages/home_page/data/repositories/general_repository.dart';

class HomePageController {
  final GeneralRepository _generalRepository = GeneralRepository();

  PortfolioResume portolioResumed = PortfolioResume(
    itens: ValueNotifier([]),
  );

  CarreiraResumed carreiraResumed = CarreiraResumed(
    itens: ValueNotifier([]),
  );

  Future<void> getPortfolioResumed() async {
    final PortfolioResume resumeResult =
        await _generalRepository.getPortfolioResumedFromAssets();

    if (resumeResult.itens.value.isNotEmpty) {
      portolioResumed.addItens(resumeResult.itens.value);
    }
  }

  Future<void> getCarrerResumed() async {
    final CarreiraResumed resumeResult =
        await _generalRepository.getCarrerFullFromAssets();

    if (resumeResult.itens.value.isNotEmpty) {
      carreiraResumed.addItens(resumeResult.itens.value);
    }
  }
}
