// lib/widgets/order_card.dart
import 'package:booka_service_app/core/styles/colors.dart';
import 'package:booka_service_app/core/widgets/order_model.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
    required this.order,
    required this.firstButtonText,
    required this.secondButtonText,
  });

  final Order order;
  final String firstButtonText;
  final String secondButtonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: kColorBlack.withOpacity(0.1),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: [
                Text('Order#${order.orderNumber}'),
                const SizedBox(width: 18),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: kColorRequested,
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
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: kColorRequestedIcon,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(order.status),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Items'),
                Text(order.items),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Actions'),
                Text(order.actions),
              ],
            ),
            const Divider(
              color: kColorDisabled,
              height: 18,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: GestureDetector(
                      onTap: () {
                        //...
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: kColorClean,
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              firstButtonText,
                              style: const TextStyle(
                                color: kColorBlack,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Placeholder(),
                        ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: kColorWater,
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              secondButtonText,
                              style: const TextStyle(
                                color: kColorClean,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
