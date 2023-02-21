import 'package:curriculo_online/pages/home_page/home_page_controller.dart';
import 'package:curriculo_online/pages/portfolio_page/portfolio_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static initialize(){
    GetIt getIt = GetIt.I;

    getIt.registerLazySingleton(() => HomePageController());
    getIt.registerLazySingleton(() => PortfolioController());
  }
}
