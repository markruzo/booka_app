import 'package:booka_service_app/core/styles/colors.dart';
import 'package:booka_service_app/features/account/presentation/pages/setting_page.dart';
import 'package:booka_service_app/features/account/presentation/widgets/account_top.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AccountTop(
              firstIconLeft: 'assets/icons/svg/x24/line/s-left.svg',
              title: 'Account',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SettingPage()));
              },
              firstIconRight: 'assets/icons/svg/x24/line/more-2.svg',
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    Text(
                      '{userName}+{avatar}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kColorBlack,
                      ),
                    ),
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
