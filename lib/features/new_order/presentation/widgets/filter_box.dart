import 'package:booka_service_app/features/new_order/presentation/widgets/washing_filter.dart';
import 'package:flutter/material.dart';

class FilterBox extends StatelessWidget {
  const FilterBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My pickup time is',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 6),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            WashingFilter(
              text: '7:00 AM',
            ),
            WashingFilter(
              text: '9:00 AM',
            ),
            WashingFilter(
              text: '2:00 PM',
            ),
            WashingFilter(
              text: '4:00 PM',
            ),
          ],
        ),
      ],
    );
  }
}
