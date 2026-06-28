import 'package:flutter/cupertino.dart';

import 'carrer_item.dart';

class CarreiraResumed {
  ValueNotifier<List<Carreira>> itens;

  CarreiraResumed({
    required this.itens,
  });

  void addItens(List<Carreira> itensResume){
    itens.value.clear();
    itens.value.addAll(itensResume);
    itens.notifyListeners();
  }

  factory CarreiraResumed.fromJson(Map<String, dynamic> json) {
    return CarreiraResumed(
      itens: ValueNotifier<List<Carreira>>(
        (json['items'] as List<dynamic>? ?? [])
            .map((e) => Carreira.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
  }
}
