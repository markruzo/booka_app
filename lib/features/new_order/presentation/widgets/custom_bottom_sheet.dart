import 'package:booka_service_app/core/theme/colors.dart';
import 'package:booka_service_app/features/new_order/presentation/widgets/input_box_icon_text.dart';
import 'package:booka_service_app/features/new_order/presentation/widgets/input_box_icon_text_discription.dart';
import 'package:booka_service_app/features/new_order/presentation/widgets/subwindow_text_icon.dart';
import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.55,
      decoration: const BoxDecoration(
        color: kColorClean,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SubWindowTextIcon(
              headline: 'Please select an option',
            ),
            SizedBox(height: 24),
            Column(
              children: [
                InputBox(
                  text: 'Delicate',
                  discription:
                      'We recommaend a gente cycle for any delicate fabrics. Check your garment`s instructions if you`re not sure.',
                  icon: 'assets/icons/svg/x24/icon-placeholder.svg',
                ),
                SizedBox(height: 24),
                InputBox(
                  text: 'Regular (Cold Wash)',
                  discription:
                      'This is a cold wash. If you want a hot wash, please note it in the special instructions.',
                  icon: 'assets/icons/svg/x24/icon-placeholder.svg',
                ),
                SizedBox(height: 24),
                InputBoxIconText(
                  text: 'Selection',
                  icon: 'assets/icons/svg/x24/icon-placeholder.svg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
