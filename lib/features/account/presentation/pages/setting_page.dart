import 'package:booka_service_app/core/theme/colors.dart';
import 'package:booka_service_app/features/account/presentation/widgets/list_widget.dart';
import 'package:booka_service_app/features/account/presentation/widgets/settings_top.dart';
import 'package:booka_service_app/features/account/presentation/widgets/upgrade_button.dart';
import 'package:booka_service_app/features/onboarding/presentation/pages/splash_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SettingsTop(
              title: 'Settings',
              firstIconLeft: 'assets/icons/svg/x24/line/s-left.svg',
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const UpgradeButton(),
                    const SizedBox(height: 24),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Headline',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: kColorBlack.withOpacity(0.3),
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        const ListSection(
                          text: 'Watchlist',
                          icon: 'assets/icons/svg/x24/line/star.svg',
                          color: kColorBlack,
                          secondIcon: 'assets/icons/svg/x24/line/s-right.svg',
                        ),
                        const ListSection(
                          text: 'Language',
                          icon: 'assets/icons/svg/x24/line/world.svg',
                          color: kColorBlack,
                          secondIcon: 'assets/icons/svg/x24/line/s-right.svg',
                        ),
                        const ListSection(
                          text: 'Dark Mode',
                          icon: 'assets/icons/svg/x24/line/dark-mode.svg',
                          color: kColorBlack,
                          secondIcon: null,
                          toggle: null,
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Headline',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: kColorBlack.withOpacity(0.3),
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        const ListSection(
                          text: 'Privacy policy',
                          icon: 'assets/icons/svg/x24/line/file-list.svg',
                          color: kColorBlack,
                          secondIcon: 'assets/icons/svg/x24/line/s-right.svg',
                        ),
                        const ListSection(
                          text: 'Terms of service',
                          icon: 'assets/icons/svg/x24/line/file-list.svg',
                          color: kColorBlack,
                          secondIcon: 'assets/icons/svg/x24/line/s-right.svg',
                        ),
                        const ListSection(
                          text: 'About Booka',
                          icon: 'assets/icons/svg/x24/line/information.svg',
                          color: kColorBlack,
                          secondIcon: 'assets/icons/svg/x24/line/s-right.svg',
                        ),
                      ],
                    ),
                    const SizedBox(height: 80),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Headline',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: kColorBlack.withOpacity(0.3),
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        const ListSection(
                          text: 'Help Center',
                          icon: 'assets/icons/svg/x24/line/emotion-happy.svg',
                          color: kColorBlack,
                          secondIcon: 'assets/icons/svg/x24/line/s-right.svg',
                        ),
                        GestureDetector(
                          onTap: () {
                            FirebaseAuth.instance.signOut();
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SplashPage()));
                          },
                          child: const ListSection(
                            text: 'Sign out',
                            icon: 'assets/icons/svg/x24/line/logout-left.svg',
                            color: Colors.redAccent,
                            secondIcon: null,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
