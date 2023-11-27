import 'package:flutter/material.dart';

class DividerSection extends StatelessWidget {
  const DividerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Divider(
                color: Colors.black.withOpacity(0.2),
                thickness: 1,
              ),
            ],
          ),
        ),
        const SizedBox(width: 24),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Or'),
          ],
        ),
        const SizedBox(width: 24),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Divider(
                color: Colors.black.withOpacity(0.2),
                thickness: 1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
