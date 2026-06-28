import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:website/core/components/menu_topo_component/menu_topo_component_controller.dart';
import 'package:website/core/inject/inject.dart';
import 'package:website/core/routes/routes_path.dart';
import 'package:website/pages/home_page/home_page.dart';
import 'package:website/pages/projetos_page/projetos_page.dart';
import 'package:website/pages/sobre_mim_page/sobre_mim_page.dart';

class Routes {
  final GoRouter goRouter;

  Routes() : goRouter = _router;

  static CustomTransitionPage<dynamic> _buildPage({
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage(
      key: state.pageKey,
      transitionDuration: const Duration(milliseconds: 400),
      reverseTransitionDuration: const Duration(milliseconds: 300),
      child: child,
      transitionsBuilder: (
          context,
          animation,
          secondaryAnimation,
          child,
          ) {
        final slideAnimation = Tween<Offset>(
          begin: const Offset(0.05, 0),
          end: Offset.zero,
        ).animate(
          CurvedAnimation(
            parent: animation,
            curve: Curves.easeOutCubic,
          ),
        );

        return FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position: slideAnimation,
            child: child,
          ),
        );
      },
    );
  }

  static GoRouter get _router => GoRouter(
    initialLocation: RoutesPath.inicio,
    routes: [
      GoRoute(
        path: RoutesPath.inicio,
        pageBuilder: (context, state) {
          getIt<MenuTopoComponentController>().notifyRoute(
            state.uri.path,
          );

          return _buildPage(
            state: state,
            child: HomePage(),
          );
        },
      ),
      GoRoute(
        path: RoutesPath.sobreMim,
        pageBuilder: (context, state) {
          getIt<MenuTopoComponentController>().notifyRoute(
            state.uri.path,
          );

          return _buildPage(
            state: state,
            child: SobreMimPage(),
          );
        },
      ),
      GoRoute(
        path: RoutesPath.projetos,
        pageBuilder: (context, state) {
          getIt<MenuTopoComponentController>().notifyRoute(
            state.uri.path,
          );

          return _buildPage(
            state: state,
            child: const ProjetosPage(),
          );
        },
      ),
    ],
  );
}