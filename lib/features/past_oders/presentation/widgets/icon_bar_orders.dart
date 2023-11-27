import 'package:booka_service_app/core/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconBarOrders extends StatelessWidget {
  const IconBarOrders({
    super.key,
    required this.firstIcon,
    required this.secondIcon,
  });

  final String firstIcon;
  final String secondIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: Center(
                child: SvgPicture.asset(
                  firstIcon,
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
            SizedBox(
              height: 24,
              width: 24,
              child: Center(
                child: SvgPicture.asset(
                  secondIcon,
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
    );
  }
}
