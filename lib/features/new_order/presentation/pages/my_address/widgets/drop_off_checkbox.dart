import 'package:booka_service_app/core/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DropOffCheckbox extends StatefulWidget {
  const DropOffCheckbox({
    super.key,
  });

  @override
  State<DropOffCheckbox> createState() => _DropOffCheckboxState();
}

class _DropOffCheckboxState extends State<DropOffCheckbox> {
  bool isIconChanged = false;
  Color iconColor = kColorBlack.withOpacity(0.3);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isIconChanged = !isIconChanged;
                  iconColor = isIconChanged
                      ? kColorWater
                      : kColorBlack.withOpacity(0.3);
                });
              },
              child: SizedBox(
                height: 24,
                width: 24,
                child: Center(
                  child: SvgPicture.asset(
                    isIconChanged
                        ? 'assets/icons/svg/x24/fill/checkbox-blank-circle_fill.svg'
                        : 'assets/icons/svg/x24/line/checkbox-blank-circle.svg',
                    height: 18,
                    width: 18,
                    colorFilter:
                        const ColorFilter.mode(kColorWater, BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 6),
        const Expanded(
          child: Column(
            children: [
              SizedBox(
                  height: 24,
                  child: Center(
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('My drop off location is different')))),
            ],
          ),
        )
      ],
    );
  }
}
