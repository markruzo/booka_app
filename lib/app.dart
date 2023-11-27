import 'package:booka_service_app/core/styles/colors.dart';
import 'package:booka_service_app/features/onboarding/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Booka',
      theme: ThemeData(
        fontFamily: 'Dm Sans',
        scaffoldBackgroundColor: kColorClean,
      ),
      home: const SplashPage(),
    );
  }
}
