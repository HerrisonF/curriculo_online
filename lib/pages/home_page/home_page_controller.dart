import 'package:curriculo_online/core/models/carrer_full.dart';
import 'package:curriculo_online/core/models/portfolio_resumed.dart';
import 'package:curriculo_online/pages/home_page/home_page_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageController {
  final HomePageRepository _homePageRepository = HomePageRepository();

  ValueNotifier<PortfolioResumed> portolioResumed =
      ValueNotifier<PortfolioResumed>(PortfolioResumed());

  ValueNotifier<CarrerFull> carrerFull =
      ValueNotifier<CarrerFull>(CarrerFull());

  githubCallback() {
    _launcherBuilder("https://github.com/HerrisonF");
  }

  linkedinCallback() {
    _launcherBuilder(
        "https://www.linkedin.com/in/herrison-f%C3%A9res-423023103/");
  }

  _launcherBuilder(String url) {
    Uri uri = Uri.parse(url);
    canLaunchUrl(uri).then((_) {
      launchUrl(uri);
    });
  }

  getPortfolioResumed() {
    _homePageRepository
        .getPortfolioResumedFromAssets()
        .then((value) => portolioResumed.value = value);
  }

  getCarrerFull() {
    _homePageRepository
        .getCarrerFullFromAssets()
        .then((value) => carrerFull.value = value);
  }

  onSeeMoreProjectsTap(BuildContext context) {
    context.go('/portfolio');
  }
}
