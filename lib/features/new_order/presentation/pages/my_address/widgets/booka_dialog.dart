import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookaDialog extends StatelessWidget {
  const BookaDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: SvgPicture.asset(
            'assets/icons/svg/x24/icon-alert-fill.svg',
            height: 18,
            width: 18,
            colorFilter: const ColorFilter.mode(kColorWater, BlendMode.srcIn),
          ),
        ),
        const SizedBox(width: 8),
        const Text(
          'Your Booka will be in touch via in-app chat\nto arrange a time to pickup your laundry.',
          style: TextStyle(fontSize: 14),
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ],
    );
  }
}
