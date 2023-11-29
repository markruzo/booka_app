import 'package:booka_service_app/core/styles/colors.dart';
import 'package:booka_service_app/core/widgets/order_card.dart';
import 'package:booka_service_app/core/widgets/order_model.dart';
import 'package:booka_service_app/features/home/presentation/widgets/home_top.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HomeTop(
              leftTitle: '{userName}',
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const Text(
                      'Active Jobs',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kColorBlack,
                      ),
                    ),
                    OrderCard(
                      firstButtonText: 'ButtonText',
                      secondButtonText: 'ButtonText',
                      order: Order(
                        orderNumber: '123',
                        status: 'Requested',
                        items: '2 x Regular Bags',
                        actions: 'Add actions',
                      ),
                    )
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
