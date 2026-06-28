import 'package:flutter/material.dart';
import 'package:website/core/routes/routes_path.dart';

class MenuTopoComponentController {

  ValueNotifier<String> pathAtual = ValueNotifier("/");

  void notifyRoute(String path) {
    pathAtual.value = path;
    if(pathAtual.value == RoutesPath.inicio){
      /// Fazer algo
    }
  }

}