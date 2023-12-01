import 'package:booka_service_app/core/theme/colors.dart';
import 'package:booka_service_app/core/widgets/notification_first.dart';
import 'package:booka_service_app/features/new_order/presentation/pages/washing_prefs/widgets/additional_sheet.dart';
import 'package:booka_service_app/features/new_order/presentation/pages/washing_prefs/widgets/detergent_sheet.dart';
import 'package:booka_service_app/features/new_order/presentation/pages/washing_prefs/widgets/laundrybag_sheet.dart';
import 'package:booka_service_app/features/new_order/presentation/pages/washing_prefs/widgets/washtype_sheet.dart';
import 'package:booka_service_app/features/new_order/presentation/widgets/filter_box.dart';
import 'package:flutter/material.dart';

class WashingPreferences extends StatelessWidget {
  const WashingPreferences({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            Text(
              'Washing Preferences',
              style: TextStyle(
                fontFamily: 'Gustavo',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kColorBlack,
              ),
            ),
            SizedBox(height: 28),
            LaundryBagSheet(),
            SizedBox(height: 12),
            FilterBox(),
            SizedBox(height: 12),
            DetergentSheet(),
            SizedBox(height: 12),
            WashTypeSheet(),
            SizedBox(height: 12),
            AdditionalSheet(),
            SizedBox(height: 20),
            NotificationFirst(
                text:
                    'Note: Make sure your order does not include any large puffy items or items that need a deep clean.'),
          ],
        ),
      ),
    );
  }
}
