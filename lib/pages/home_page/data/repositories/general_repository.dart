import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:website/core/models/carreira/carrer_full.dart';
import 'package:website/core/models/portfolio/portfolio_resumed.dart';

class GeneralRepository {

  Future<PortfolioResume> getPortfolioResumedFromAssets() async {
    String data = await rootBundle.loadString('assets/data/portfolio_full.json');
    Map<String, dynamic> jsonResult = jsonDecode(data);
    final port = PortfolioResume.fromJson(jsonResult);
    return port;
  }

  Future<CarreiraResumed> getCarrerFullFromAssets() async {
    String data = await rootBundle.loadString('assets/data/carrer_timeline.json');
    Map<String, dynamic> jsonResult = jsonDecode(data);
    final carreira = CarreiraResumed.fromJson(jsonResult);
    return carreira;
  }
}