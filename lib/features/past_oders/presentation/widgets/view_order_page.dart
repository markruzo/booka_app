import 'package:booka_service_app/core/theme/colors.dart';
import 'package:booka_service_app/features/past_oders/presentation/widgets/view_order_top.dart';
import 'package:booka_service_app/features/past_oders/presentation/widgets/view_section.dart';
import 'package:booka_service_app/features/past_oders/presentation/widgets/view_sectioon_address.dart';
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
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: kColorTropical,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Message Mario the time your will oick up the order.',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const ViewSection(
                      text: 'Mario',
                      buttonText: 'Chat',
                    ),
                    Divider(
                      color: kColorBlack.withOpacity(0.05),
                    ),
                    const ViewSectionAddress(
                      text: 'Address',
                      buttonText: 'Map',
                      address: 'Mustermann Str, 12345\nMusterhausen',
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
