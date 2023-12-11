import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SupportBox extends StatelessWidget {
  const SupportBox({
    super.key,
    required this.title,
    required this.icon,
    required this.subline,
  });
  final String title;
  final String subline;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kColorBlack.withOpacity(0.05),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: kColorClean,
                          ),
                          child: Center(
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  icon!,
                                  height: 32,
                                  width: 32,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(subline),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 32,
                  width: 32,
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/svg/x24/line/s-right.svg',
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
