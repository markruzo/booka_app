import 'package:booka_service_app/features/account/presentation/widgets/settings_top.dart';
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
                  children: const [
                    Text('Content'),
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
