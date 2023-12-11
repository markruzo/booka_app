import 'dart:io';

import 'package:booka_service_app/core/theme/colors.dart';
import 'package:booka_service_app/core/theme/new_constant.dart';
import 'package:booka_service_app/core/widgets/icon_bar.dart';
import 'package:booka_service_app/features/new_order/new_order_screen.dart';
import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {
  const HomeTop({
    super.key,
    required this.leftTitle,
  });

  final String leftTitle;

  @override
  Widget build(BuildContext context) {
    double containerHeight = Platform.isIOS ? 44 : 56;
    return SizedBox(
      height: containerHeight,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 24,
                  child: Center(
                    child: Text(
                      leftTitle,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: kColorBlack,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ],
            ),
            IconBar(
              firstIcon: 'assets/icons/svg/x24/line/add.svg',
              title: 'Active',
              color: ActionColor.actionLaundry,
              dotColor: ActionColor.actionLaundryIcon,
              onTap: () {
                Navigator.of(context)
                    .push(_createRoute(const NewOrderScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

PageRouteBuilder<T> _createRoute<T>(Widget page) {
  return PageRouteBuilder<T>(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      var offsetAnimation = animation.drive(tween);

      return SlideTransition(position: offsetAnimation, child: child);
    },
  );
}
