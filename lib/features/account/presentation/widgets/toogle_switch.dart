import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ToggleSwitch extends StatelessWidget {
  const ToggleSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 31,
      width: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(52),
        color: kColorDisabled,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: 28,
          width: 28,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: kColorBlack.withOpacity(0.5)),
            ),
          ),
        ),
      ),
    );
  }
}
