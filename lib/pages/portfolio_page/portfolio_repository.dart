import 'dart:convert';

import 'package:curriculo_online/core/models/portfolio/portfolio_full.dart';
import 'package:flutter/services.dart';

class PortfolioRepository {

  Future<PortfolioFull> getPortfolioFullFromAssets() async {
    String data = await rootBundle.loadString('assets/data/portfolio_full.json');
    Map<String, dynamic> jsonResult = jsonDecode(data);
    return PortfolioFull.fromJson(jsonResult);
  }
}