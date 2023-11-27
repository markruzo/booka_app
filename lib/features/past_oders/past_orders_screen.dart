import 'package:booka_service_app/core/styles/colors.dart';
import 'package:booka_service_app/features/past_oders/presentation/widgets/orders_top.dart';
import 'package:flutter/material.dart';

class PastOrdersScreen extends StatelessWidget {
  const PastOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const OrdersTop(
              leftTitle: 'Past Orders',
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    Text(
                      'Past Orders',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kColorBlack,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
