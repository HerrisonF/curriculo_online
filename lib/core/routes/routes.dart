import 'package:curriculo_online/pages/home_page/home_page.dart';
import 'package:curriculo_online/pages/portfolio_page/portfolio_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class Routes {
  final GoRouter goRouter;

  Routes() : goRouter = _router;

  static GoRouter get _router => GoRouter(
        initialLocation: '/',
        routes: <RouteBase>[
          GoRoute(
              path: '/',
              builder: (BuildContext context, GoRouterState state) {
                return HomePage();
              },
              routes: [
                GoRoute(
                  path: 'portfolio',
                  builder: (BuildContext context, GoRouterState state) {
                    return const PortfolioPage();
                  },
                ),
              ]),
        ],
      );
}
