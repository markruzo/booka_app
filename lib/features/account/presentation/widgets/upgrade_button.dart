import 'package:booka_service_app/core/styles/colors.dart';
import 'package:flutter/material.dart';

class UpgradeButton extends StatelessWidget {
  const UpgradeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: kColorWater,
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 18, right: 12, top: 12, bottom: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Upgrade to Booka',
                  style: TextStyle(
                    fontFamily: 'DM Sans',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kColorClean,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: kColorClean,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      left: 32,
                      right: 32,
                      top: 8,
                      bottom: 8,
                    ),
                    child: Center(
                      child: Text(
                        'Upgrade',
                        style: TextStyle(
                          fontFamily: 'DM Sans',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: kColorBlack,
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
