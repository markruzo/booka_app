import 'package:booka_service_app/core/styles/colors.dart';
import 'package:booka_service_app/features/new_order/presentation/pages/my_address/widgets/pick_up_selection.dart';
import 'package:booka_service_app/features/new_order/presentation/widgets/subwindow_text_icon.dart';
import 'package:flutter/material.dart';

class AddressBottomSheet extends StatelessWidget {
  const AddressBottomSheet({super.key, required this.onOptionSelected});

  final Function(String) onOptionSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.40,
      decoration: const BoxDecoration(
        color: kColorClean,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SubWindowTextIcon(
              headline: 'Please select an option',
            ),
            Column(
              children: [
                PickUpSelection(
                  text: 'Leave at my front door',
                  icon: 'assets/icons/svg/x24/icon-placeholder.svg',
                  onTap: () {
                    onOptionSelected('Leave at my front door');
                    Navigator.pop(context, 'Leave at my front door');
                  },
                ),
                const SizedBox(height: 12),
                PickUpSelection(
                  text: 'Meet me for ... ',
                  icon: 'assets/icons/svg/x24/icon-placeholder.svg',
                  onTap: () {
                    onOptionSelected('Meet me for ...');
                    Navigator.pop(context, 'Meet me for ...');
                  },
                ),
                const SizedBox(height: 12),
                PickUpSelection(
                  text: 'Add special instructions',
                  icon: 'assets/icons/svg/x24/icon-placeholder.svg',
                  onTap: () {
                    onOptionSelected('Add special instructions');
                    Navigator.pop(context, 'Add special instructions');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
