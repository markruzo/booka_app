import 'package:booka_service_app/core/theme/colors.dart';
import 'package:booka_service_app/features/new_order/presentation/widgets/custom_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SelectionBox extends StatelessWidget {
  const SelectionBox({super.key, required this.selectionText});
  final String selectionText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showBottomSheet(context);
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: kColorBlack.withOpacity(0.3)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  selectionText,
                  style: TextStyle(
                    fontSize: 16,
                    color: kColorBlack.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 24,
                  width: 24,
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/svg/x24/icon-chevron-down.svg',
                      height: 18,
                      width: 18,
                      colorFilter: ColorFilter.mode(
                          kColorBlack.withOpacity(0.5), BlendMode.srcIn),
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

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    isDismissible: false,
    enableDrag: true,
    builder: (BuildContext context) {
      return const CustomBottomSheet();
    },
  );
}
