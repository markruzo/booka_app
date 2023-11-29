import 'package:booka_service_app/core/styles/colors.dart';
import 'package:flutter/material.dart';

class NewOrderPage extends StatelessWidget {
  const NewOrderPage({
    super.key,
    required this.color,
    required this.title,
  });

  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'Gustavo',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kColorBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
