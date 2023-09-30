import 'package:curriculo_online/core/inject/inject.dart';
import 'package:curriculo_online/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Inject.initialize();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Herrison Féres - Software Mobile Engineer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        minWidth: 450,
        defaultName: MOBILE,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.resize(700, name: TABLET),
          const ResponsiveBreakpoint.resize(1024, name: DESKTOP),
        ],
      ),
      routerConfig: GetIt.I<Routes>().goRouter,
    );
  }
}
