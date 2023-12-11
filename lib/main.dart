import 'dart:io' show Platform;

import 'package:booka_service_app/app.dart';
import 'package:booka_service_app/provider/theme_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const App(),
    ),
  );
}

// ! Replace to App.dart
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    TargetPlatform? platform;
    if (Platform.isAndroid) {
      platform = TargetPlatform.android;
    } else if (Platform.isIOS) {
      platform = TargetPlatform.iOS;
    }

    final MediaQueryData mediaQuery = MediaQuery.of(context);
    double screenWidth = mediaQuery.size.width;
    double screenHeight = mediaQuery.size.height;

    return Start(
      platform: platform,
      screenWidth: screenWidth,
      screenHeight: screenHeight,
    );
  }
}

// * XXX
// ! XXX
// ? XXX
