import 'dart:io';

import 'package:booka_service_app/core/styles/colors.dart';
import 'package:booka_service_app/features/onboarding/presentation/widgets/apple_button.dart';
import 'package:booka_service_app/features/onboarding/presentation/widgets/divider_section.dart';
import 'package:booka_service_app/features/onboarding/presentation/widgets/email_button.dart';
import 'package:booka_service_app/features/onboarding/presentation/widgets/google_button.dart';
import 'package:booka_service_app/features/onboarding/presentation/widgets/signin_button.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isIOS = Platform.isIOS;
    double topPadding = isIOS ? 0 : 16;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    left: 20, right: 20, bottom: 6, top: topPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Welcome to Booka',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: kColorBlack,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Take a load of and place your order today to enjoy prompt service.',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: kColorBlack.withOpacity(0.3),
                              height: 0),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              child: const Center(
                                child: Image(
                                    image: AssetImage(
                                        'assets/images/take_a_load_off_b.png')),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Column(
                      children: [
                        SizedBox(height: 8),
                        EmailButton(),
                        SizedBox(height: 8),
                        DividerSection(),
                        SizedBox(height: 8),
                        GoogleButton(),
                        SizedBox(height: 4),
                        AppleButton(),
                        SizedBox(height: 4),
                        SigninSection(),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
