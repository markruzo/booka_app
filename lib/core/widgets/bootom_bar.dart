import 'dart:io';

import 'package:booka_service_app/core/theme/colors.dart';
import 'package:booka_service_app/core/widgets/bootom_bar_item.dart';
import 'package:booka_service_app/features/account/account_screen.dart';
import 'package:booka_service_app/features/home/home_screen.dart';
import 'package:booka_service_app/features/past_oders/past_orders_screen.dart';
import 'package:booka_service_app/features/support/support_screen.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  final List<String> _labels = [
    'Home',
    'Past Orders',
    'Support',
    'Account',
  ];
  final List<String> _iconPaths = [
    'assets/icons/svg/x24/line/home.svg',
    'assets/icons/svg/x24/line/shopping-bag.svg',
    'assets/icons/svg/x24/line/emotion-happy.svg',
    'assets/icons/svg/x24/line/user.svg',
  ];
  final List<Widget> _pages = const [
    HomeScreen(),
    PastOrdersScreen(),
    SupportScreen(),
    AccountScreen(),
  ];

  double getContainerHeight() {
    return Platform.isIOS ? 80.0 : 60.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        _pages[_selectedIndex],
        Positioned(
          bottom: 0.0,
          right: 0.0,
          left: 0.0,
          child: Container(
            height: getContainerHeight(),
            decoration: BoxDecoration(
              color: kColorClean.withOpacity(0.98),
              boxShadow: [
                BoxShadow(
                  color: kColorBlack.withOpacity(0.05),
                  blurRadius: 2,
                  offset: const Offset(0, -1),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (int i = 0; i < _pages.length; i++)
                    BottomBarItem(
                      index: i,
                      selectedIndex: _selectedIndex,
                      labels: _labels,
                      iconPaths: _iconPaths,
                      onTap: (index) {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                    ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
