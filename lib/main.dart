import 'dart:io' show Platform;

import 'package:booka_service_app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

    return App(
      platform: platform,
      screenWidth: screenWidth,
      screenHeight: screenHeight,
    );
  }
}
