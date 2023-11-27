import 'package:booka_service_app/core/styles/colors.dart';
import 'package:flutter/material.dart';

class ButtonSecondary extends StatelessWidget {
  const ButtonSecondary({
    super.key,
    required this.buttonText,
  });
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: kColorDisabled,
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: kColorBlack,
            ),
          ),
        ),
      ),
    );
  }
}
