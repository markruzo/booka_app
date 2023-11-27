import 'package:booka_service_app/core/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonSmalIcon extends StatelessWidget {
  const ButtonSmalIcon({
    super.key,
    required this.buttonText,
    required this.icon,
  });
  final String buttonText;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: kColorWater,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 16),
            child: Row(
              children: [
                SizedBox(
                  height: 18,
                  width: 18,
                  child: SvgPicture.asset(
                    icon,
                    colorFilter: const ColorFilter.mode(
                      kColorClean,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  buttonText,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: kColorClean,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
