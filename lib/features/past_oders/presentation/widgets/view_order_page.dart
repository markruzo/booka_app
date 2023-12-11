import 'package:booka_service_app/core/theme/colors.dart';
import 'package:booka_service_app/features/past_oders/presentation/widgets/view_order_top.dart';
import 'package:flutter/material.dart';

class ViewOrderPage extends StatelessWidget {
  const ViewOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ViewOrderTop(
              leftTitle: 'Order#123',
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 4),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    Text(
                      'View Orders',
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
