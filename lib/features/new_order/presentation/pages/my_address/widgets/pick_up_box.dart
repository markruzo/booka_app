import 'package:booka_service_app/core/theme/colors.dart';
import 'package:booka_service_app/features/new_order/presentation/pages/my_address/widgets/address_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PickUpBox extends StatefulWidget {
  const PickUpBox(
      {super.key,
      required this.selectionText,
      required Function(dynamic text) onSelectionChanged});

  final String selectionText;

  @override
  _PickUpBoxState createState() => _PickUpBoxState();
}

class _PickUpBoxState extends State<PickUpBox> {
  String _selectedText = "";

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
                  _selectedText.isEmpty ? widget.selectionText : _selectedText,
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
                        kColorBlack.withOpacity(0.5),
                        BlendMode.srcIn,
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

  void _showBottomSheet(BuildContext context) async {
    final result = await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return AddressBottomSheet(
          onOptionSelected: (selectedText) {
            setState(() {
              _selectedText = selectedText;
            });
          },
        );
      },
    );

    if (result != null) {}
  }
}
