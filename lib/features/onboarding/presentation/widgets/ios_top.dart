import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IosTop extends StatelessWidget {
  const IosTop({
    super.key,
    required this.leftIcon,
    required this.onLeftIconTap,
  });

  final String leftIcon;
  final VoidCallback onLeftIconTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onLeftIconTap,
      child: SizedBox(
        height: 50,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 24,
                        width: 24,
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
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
