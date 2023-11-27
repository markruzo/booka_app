import 'package:booka_service_app/core/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconBarSupport extends StatelessWidget {
  const IconBarSupport({
    super.key,
    required this.firstIcon,
  });

  final String firstIcon;

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
                    color: kColorWater,
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.only(left: 12, right: 12, top: 4, bottom: 4),
                    child: Text(
                      'Chat',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: kColorClean,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 12),
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
          ],
        ),
      ],
    );
  }
}
