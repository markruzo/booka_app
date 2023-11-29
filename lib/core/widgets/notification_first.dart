import 'package:booka_service_app/core/styles/colors.dart';
import 'package:flutter/material.dart';

class NotificationFirst extends StatelessWidget {
  const NotificationFirst({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(255, 235, 249, 253),
        border: Border.all(
          color: const Color.fromARGB(255, 196, 238, 250),
        ),
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: kColorBlack,
          ),
        ),
      ),
    );
  }
}
