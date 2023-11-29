import 'package:booka_service_app/features/new_order/presentation/widgets/washing_filterbox_big.dart';
import 'package:flutter/material.dart';

class FilterBoxBig extends StatefulWidget {
  const FilterBoxBig({
    super.key,
  });

  @override
  State<FilterBoxBig> createState() => _FilterBoxBigState();
}

class _FilterBoxBigState extends State<FilterBoxBig> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            WashingFilterBoxBig(
              selection: 'Late Morning',
            ),
          ],
        ),
        Column(
          children: [
            WashingFilterBoxBig(
              selection: 'Afternoon',
            ),
          ],
        ),
      ],
    );
  }
}
