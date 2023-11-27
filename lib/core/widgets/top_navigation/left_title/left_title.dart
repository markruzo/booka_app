import 'package:booka_service_app/core/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LeftTitle extends StatelessWidget {
  const LeftTitle({
    super.key,
    required this.firstIconRight,
    required this.title,
    this.onTap,
    required this.firstIconLeft,
  });
  final String title;
  final String firstIconLeft;
  final String firstIconRight;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      color: kColorTropical,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 24,
                  width: 24,
                  color: kColorFluffy,
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
                const SizedBox(width: 20),
                Container(
                  height: 24,
                  color: kColorFluffy,
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
                          'assets/icons/svg/x24/line/checkbox-blank-circle.svg',
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
                          'assets/icons/svg/x24/line/checkbox-blank-circle.svg',
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
                    GestureDetector(
                      onTap: onTap,
                      child: Container(
                        height: 24,
                        width: 24,
                        color: kColorFluffy,
                        child: Center(
                          child: SvgPicture.asset(
                            firstIconRight,
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
