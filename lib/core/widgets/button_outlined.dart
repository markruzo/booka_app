import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ButtonOutlined extends StatelessWidget {
  const ButtonOutlined({
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
            border: Border.all(
              strokeAlign: BorderSide.strokeAlignInside,
              width: 1,
              color: kColorWater,
            )),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: kColorWater,
            ),
          ),
        ),
      ),
    );
  }
}
