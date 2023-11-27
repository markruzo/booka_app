import 'dart:io';

import 'package:booka_service_app/core/styles/colors.dart';
import 'package:booka_service_app/features/onboarding/presentation/widgets/apple_button.dart';
import 'package:booka_service_app/features/onboarding/presentation/widgets/divider_section.dart';
import 'package:booka_service_app/features/onboarding/presentation/widgets/email_button.dart';
import 'package:booka_service_app/features/onboarding/presentation/widgets/google_button.dart';
import 'package:booka_service_app/features/onboarding/presentation/widgets/signin_button.dart';
import 'package:booka_service_app/features/signin/presentation/pages/signin_page.dart';
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
                    left: 16, right: 16, bottom: 6, top: topPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          child: const Center(
                            child: Text(
                              'Welcome to Booka',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: kColorBlack,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          child: Center(
                            child: Text(
                              'Take a load of, relax, and place your order today to enjoy prompt service.',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: kColorBlack.withOpacity(0.5),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const EmailButton(),
                        const SizedBox(height: 8),
                        const DividerSection(),
                        const SizedBox(height: 8),
                        const GoogleButton(),
                        const SizedBox(height: 4),
                        const AppleButton(),
                        const SizedBox(height: 4),
                        SigninButton(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SigninPage()));
                          },
                        ),
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
