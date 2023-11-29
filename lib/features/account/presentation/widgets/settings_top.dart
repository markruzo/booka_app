import 'dart:io';

import 'package:booka_service_app/core/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingsTop extends StatelessWidget {
  const SettingsTop({
    super.key,
    required this.title,
    this.onTap,
    required this.firstIconLeft,
  });
  final String title;
  final String firstIconLeft;

  final VoidCallback? onTap;

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
            Row(
              children: [
                GestureDetector(
                  onTap: onTap,
                  child: SizedBox(
                    height: 24,
                    width: 24,
                    child: Center(
                      child: SvgPicture.asset(
                        firstIconLeft,
                        height: 24,
                        width: 24,
                        colorFilter: const ColorFilter.mode(
                          kColorBlack,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  height: 24,
                  child: Center(
                      child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kColorBlack,
                    ),
                  )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
