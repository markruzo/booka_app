import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ScondGuideBox extends StatelessWidget {
  const ScondGuideBox({
    super.key,
    required this.badgeText,
  });

  final String badgeText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: kColorDisabled,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: kColorBlack.withOpacity(0.5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 12, right: 12, top: 6, bottom: 6),
                        child: Text(
                          badgeText,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: kColorClean,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 44),
                const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lorem ipsum dolor.',
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Ipsum dolor sit amet.',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: kColorBlack,
                          ),
                        ),
                        Text(
                          '3mins read',
                          style: TextStyle(
                            fontSize: 12,
                            color: kColorBlack,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 8.0,
          right: 8.0,
          child: Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kColorBlack.withOpacity(0.5),
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/svg/x24/fill/more_fill.svg',
                colorFilter: const ColorFilter.mode(
                  kColorClean,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
