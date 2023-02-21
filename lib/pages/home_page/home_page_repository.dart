import 'dart:convert';

import 'package:curriculo_online/core/models/carrer_full.dart';
import 'package:curriculo_online/core/models/portfolio_resumed.dart';
import 'package:flutter/services.dart';

class HomePageRepository {

  Future<PortfolioResumed> getPortfolioResumedFromAssets() async {
    String data = await rootBundle.loadString('assets/data/portfolio_full.json');
    Map<String, dynamic> jsonResult = jsonDecode(data);
    return PortfolioResumed.fromJson(jsonResult);
  }

  Future<CarrerFull> getCarrerFullFromAssets() async {
    String data = await rootBundle.loadString('assets/data/carrer_timeline.json');
    Map<String, dynamic> jsonResult = jsonDecode(data);
    return CarrerFull.fromJson(jsonResult);
  }
}