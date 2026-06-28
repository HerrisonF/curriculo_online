import 'package:flutter/material.dart';
import 'package:website/core/models/carreira/carrer_full.dart';
import 'package:website/pages/home_page/data/repositories/general_repository.dart';

class SobreMimPageController {
  final GeneralRepository _generalRepository = GeneralRepository();

  CarreiraResumed carreiraResumed = CarreiraResumed(
    itens: ValueNotifier([]),
  );

  Future<void> getCarrerResumed() async {
    final CarreiraResumed resumeResult =
    await _generalRepository.getCarrerFullFromAssets();

    if (resumeResult.itens.value.isNotEmpty) {
      carreiraResumed.addItens(resumeResult.itens.value);
    }
  }
}
