import 'package:booka_service_app/core/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppleButton extends StatelessWidget {
  const AppleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kColorDisabled,
        borderRadius: BorderRadius.circular(51),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 4, right: 4, top: 4, bottom: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Center(
                    child: SvgPicture.asset('assets/icons/social/apple.svg'),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 12),
            const SizedBox(
              height: 40,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Sign up with Apple',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kColorBlack,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
