import 'dart:io';

import 'package:booka_service_app/core/theme/colors.dart';
import 'package:booka_service_app/features/past_oders/presentation/widgets/icon_bar_orders.dart';
import 'package:flutter/material.dart';

class OrdersTop extends StatelessWidget {
  const OrdersTop({
    super.key,
    required this.leftTitle,
  });

  final String leftTitle;

  @override
  Widget build(BuildContext context) {
    double containerHeight = Platform.isIOS ? 44 : 56;
    return SizedBox(
      height: containerHeight,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 24,
                  color: kColorFluffy,
                  child: Center(
                    child: Text(
                      leftTitle,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: kColorBlack,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ],
            ),
            const IconBarOrders(
              firstIcon: 'assets/icons/svg/x24/line/more-2.svg',
              secondIcon: 'assets/icons/svg/x24/line/information.svg',
            ),
          ],
        ),
      ),
    );
  }
}
