import 'package:get_it/get_it.dart';
import 'package:website/core/components/menu_topo_component/menu_topo_component_controller.dart';
import 'package:website/core/routes/routes.dart';
import 'package:website/pages/home_page/home_page_controller.dart';
import 'package:website/pages/projetos_page/portfolio_controller.dart';
import 'package:website/pages/sobre_mim_page/sobre_mim_page_controller.dart';

final getIt = GetIt.instance;

class Inject {
  static void initialize() {
    getIt.registerLazySingleton<MenuTopoComponentController>(
          () => MenuTopoComponentController(),
    );
    getIt.registerLazySingleton<HomePageController>(
          () => HomePageController(),
    );
    getIt.registerLazySingleton<PortfolioController>(
          () => PortfolioController(),
    );
    getIt.registerLazySingleton<SobreMimPageController>(
          () => SobreMimPageController(),
    );
    getIt.registerLazySingleton<Routes>(() => Routes());
  }
}
