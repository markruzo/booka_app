import 'dart:io';

import 'package:booka_service_app/core/styles/colors.dart';
import 'package:booka_service_app/features/support/presentation/widgets/icon_bar_support.dart';
import 'package:flutter/material.dart';

class SupportTop extends StatelessWidget {
  const SupportTop({
    super.key,
    required this.leftTitle,
  });

  final String leftTitle;

  @override
  Widget build(BuildContext context) {
    double containerHeight = Platform.isIOS ? 44 : 56;
    return Container(
      height: containerHeight,
      color: kColorTropical,
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
            const IconBarSupport(
              firstIcon: 'assets/icons/svg/x24/line/more-2.svg',
            ),
          ],
        ),
      ),
    );
  }
}
