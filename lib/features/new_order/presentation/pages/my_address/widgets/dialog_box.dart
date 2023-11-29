import 'package:booka_service_app/core/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: Center(
                child: SvgPicture.asset(
                  'assets/icons/svg/x24/icon-alert-fill.svg',
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
        const Expanded(
          child: Column(
            children: [
              Text(
                  'Your Booka will be in touch via in-app chat to arrange a time to pickup yor laundry.'),
            ],
          ),
        )
      ],
    );
  }
}
