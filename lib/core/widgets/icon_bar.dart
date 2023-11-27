import 'package:booka_service_app/core/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconBar extends StatelessWidget {
  const IconBar({
    super.key,
    required this.firstIcon,
    required this.title,
    required this.color,
    required this.dotColor,
  });
  final String title;
  final String firstIcon;
  final Color color;
  final Color dotColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: color,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 6, right: 8, top: 4, bottom: 4),
                    child: Row(
                      children: [
                        Center(
                          child: Container(
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: dotColor,
                            ),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: kColorBlack,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(width: 12),
            Container(
              height: 24,
              width: 24,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: kColorWater,
              ),
              child: Center(
                child: SvgPicture.asset(
                  firstIcon,
                  height: 20,
                  width: 20,
                  colorFilter: const ColorFilter.mode(
                    kColorClean,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
