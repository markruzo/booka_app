import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopNavigationAndroid extends StatelessWidget {
  const TopNavigationAndroid({
    super.key,
    required this.leftTitle,
    required this.centerTitle,
    required this.leftIcon,
    required this.rightIcon,
  });

  final String leftTitle;
  final String centerTitle;
  final String leftIcon;
  final String rightIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      color: kColorTropical,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      color: kColorFluffy,
                      child: Center(
                        child: SvgPicture.asset(
                          leftIcon,
                          height: 24,
                          width: 24,
                          colorFilter: const ColorFilter.mode(
                            kColorBlack,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
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
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 24,
                  color: kColorFluffy,
                  child: Center(
                    child: Text(
                      centerTitle,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: kColorBlack,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      color: kColorFluffy,
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/svg/x24/line/notification.svg',
                          height: 24,
                          width: 24,
                          colorFilter: const ColorFilter.mode(
                            kColorBlack,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      height: 24,
                      width: 24,
                      color: kColorFluffy,
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/svg/x24/line/settings.svg',
                          height: 24,
                          width: 24,
                          colorFilter: const ColorFilter.mode(
                            kColorBlack,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      height: 24,
                      width: 24,
                      color: kColorFluffy,
                      child: Center(
                        child: SvgPicture.asset(
                          rightIcon,
                          height: 24,
                          width: 24,
                          colorFilter: const ColorFilter.mode(
                            kColorBlack,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
