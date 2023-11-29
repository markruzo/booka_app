import 'dart:io';

import 'package:booka_service_app/core/styles/colors.dart';
import 'package:booka_service_app/core/widgets/icon_bar.dart';
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
                Container(
                  height: 24,
                  color: kColorFluffy,
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
            const IconBar(
              firstIcon: 'assets/icons/svg/x24/line/add.svg',
              title: '{status}',
              color: kColorLaundry,
              dotColor: kColorLaundryIcon,
            ),
          ],
        ),
      ),
    );
  }
}
