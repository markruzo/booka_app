import 'package:booka_service_app/core/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddjustPickUp extends StatelessWidget {
  const AddjustPickUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: Center(
                child: SvgPicture.asset(
                  'assets/icons/svg/x24/icon-map-pin.svg',
                  height: 18,
                  width: 18,
                  colorFilter:
                      const ColorFilter.mode(kColorWater, BlendMode.srcIn),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 6),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: kColorBlack),
                    ),
                  ),
                  child: const Text('Addjust pickup location'),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
