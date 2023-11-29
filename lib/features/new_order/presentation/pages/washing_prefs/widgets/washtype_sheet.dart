import 'package:booka_service_app/core/styles/colors.dart';
import 'package:booka_service_app/features/new_order/presentation/widgets/subwindow_text_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WashTypeSheet extends StatefulWidget {
  const WashTypeSheet({super.key});

  @override
  _WashTypeSheetState createState() => _WashTypeSheetState();
}

class _WashTypeSheetState extends State<WashTypeSheet> {
  String selectedOption = 'Select Option';

  final Color colorChanged = kColorOffline;

  void _showBottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: false,
      enableDrag: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.0)),
      ),
      builder: (BuildContext context) {
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 12),
                child: SubWindowTextIcon(
                  headline: 'Please select an option',
                ),
              ),
              _buildOption('Delicate',
                  discription:
                      'We recommanded a gentle cycle for any delicate fabriscs. Check your germent`s instructions iff your`re not sure.'),
              const SizedBox(height: 8),
              _buildOption('Regular (Cold Wash)',
                  discription:
                      'This is a cold wash. If you want a hot wash, please note in the special instructions.'),
            ],
          ),
        );
      },
    );
  }

  Widget _buildOption(String option, {required String discription}) {
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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 24,
                          width: 24,
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/icons/svg/x24/icon-alert-circle.svg',
                              height: 20,
                              width: 20,
                              colorFilter: const ColorFilter.mode(
                                  kColorWater, BlendMode.srcIn),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          option,
                          style: const TextStyle(
                            fontSize: 16.0,
                            color: kColorBlack,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            discription,
                            style: const TextStyle(
                              fontSize: 14,
                              color: kColorBlack,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
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
    String headline = 'My wash type is';
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
