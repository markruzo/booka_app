import 'package:booka_service_app/core/styles/colors.dart';
import 'package:booka_service_app/features/new_order/presentation/widgets/subwindow_text_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PickkUpSheet extends StatefulWidget {
  const PickkUpSheet({super.key});

  @override
  _PickkUpSheetState createState() => _PickkUpSheetState();
}

class _PickkUpSheetState extends State<PickkUpSheet> {
  String selectedOption = 'Select Option';
  final Color colorChanged = kColorOffline;

  void _showBottomSheet() {
    showModalBottomSheet(
      isScrollControlled: false,
      isDismissible: false,
      enableDrag: true,
      useSafeArea: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.0)),
      ),
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.35,
          decoration: const BoxDecoration(
            color: kColorClean,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.0),
              topRight: Radius.circular(24.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 12),
                child: SubWindowTextIcon(
                  headline: 'Please select an option',
                ),
              ),
              _buildOption('Leave at my front door'),
              const SizedBox(height: 12),
              _buildOption('Meet me for handover'),
              const SizedBox(height: 12),
              _buildOption('Add special instructions'),
            ],
          ),
        );
      },
    );
  }

  Widget _buildOption(String option) {
    return GestureDetector(
      onTap: () {
        _updateSelectedOption(option);
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: option == selectedOption ? kColorTropical : kColorOffline,
          ),
          child: Row(
            children: <Widget>[
              Text(
                option,
                style: const TextStyle(
                  fontSize: 16.0,
                  color: kColorBlack,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _updateSelectedOption(String option) {
    setState(() {
      selectedOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    String headline = 'Pickup Instructions';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headline,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 6),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: _showBottomSheet,
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: kColorBlack.withOpacity(0.3)),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        selectedOption,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: selectedOption == 'colorOffline'
                              ? colorChanged
                              : kColorBlack,
                        ),
                      ),
                      SizedBox(
                        height: 24,
                        width: 24,
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/icons/svg/x24/icon-chevron-down.svg',
                            height: 24,
                            width: 24,
                            colorFilter: ColorFilter.mode(
                                kColorBlack.withOpacity(0.5), BlendMode.srcIn),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
