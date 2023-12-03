import 'dart:io';

import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewTopNavigation extends StatelessWidget {
  const NewTopNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double containerHeight = Platform.isIOS ? 44 : 56;
    return SizedBox(
      height: containerHeight,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Center(
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: kColorDisabled,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/svg/x24/line/arrow-left.svg',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                SizedBox(
                  height: 40,
                  child: Center(
                    child: Text(
                      'Title',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: kColorBlack,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Center(
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: kColorDisabled,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/svg/x24/line/close.svg',
                          height: 20,
                          width: 20,
                          colorFilter: const ColorFilter.mode(
                            kColorBlack,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
