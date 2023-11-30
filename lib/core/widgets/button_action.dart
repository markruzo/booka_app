import 'package:booka_service_app/core/widgets/order_model.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.order,
    required this.backgroundColor,
    required this.badgeColor,
  });

  final Order order;

  final Color backgroundColor;
  final Color badgeColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 8,
          right: 10,
          top: 5,
          bottom: 5,
        ),
        child: Row(
          children: [
            Container(
              height: 12,
              width: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: badgeColor,
              ),
            ),
            const SizedBox(width: 4),
            Text(order.status),
          ],
        ),
      ),
    );
  }
}
