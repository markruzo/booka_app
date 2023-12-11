import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class QuestionBox extends StatelessWidget {
  const QuestionBox({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kColorBlack.withOpacity(0.05),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kColorBlack,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 24,
                  width: 24,
                  child:
                      SvgPicture.asset('assets/icons/svg/x24/line/s-down.svg'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
