import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class CompleteOrder extends StatelessWidget {
  const CompleteOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            Text(
              'Payment',
              style: TextStyle(
                fontFamily: 'Gustavo',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kColorBlack,
              ),
            ),
            SizedBox(height: 24),
            Text('Content'),
          ],
        ),
      ),
    );
  }
}
