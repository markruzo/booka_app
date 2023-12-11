import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.text,
    required this.color,
    required this.textColor,
  });
  final String text;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
        child: Text(text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
