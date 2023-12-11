import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class OrderList extends StatelessWidget {
  const OrderList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Center(
                  child: Container(
                    height: 52,
                    width: 52,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: kColorFluffy,
                    ),
                    child: const Center(child: Text('AV')),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order#123',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('2 x Regular Bags'),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kColorFluffy,
                  border: Border.all(
                    color: kColorWater,
                    width: 4,
                  ),
                ),
                child: const Center(
                    child: Text(
                  '0%',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    wordSpacing: 0.2,
                  ),
                )),
              ),
            )
          ],
        )
      ],
    );
  }
}
