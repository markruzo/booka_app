import 'package:flutter/material.dart';

class NotificationSecond extends StatelessWidget {
  const NotificationSecond({super.key, required this.info});
  final String info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(255, 245, 235, 233),
        border: Border.all(
          color: const Color.fromARGB(255, 171, 27, 23),
        ),
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          info,
          style: const TextStyle(
            fontFamily: 'DM Sans',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 171, 27, 23),
          ),
        ),
      ),
    );
  }
}
