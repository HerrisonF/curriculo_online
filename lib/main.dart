import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:website/core/inject/inject.dart';

import 'core/constants/strings.dart';
import 'core/routes/routes.dart';

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
      title: siteTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      routerConfig: GetIt.I<Routes>().goRouter,
    );
  }
}
