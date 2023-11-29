import 'package:booka_service_app/core/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputBoxIconText extends StatefulWidget {
  const InputBoxIconText({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final String icon;

  @override
  _InputBoxIconTextState createState() => _InputBoxIconTextState();
}

class _InputBoxIconTextState extends State<InputBoxIconText> {
  bool isSelected = false;
  Color containerColor = kColorOffline;
  Color selectedColor = kColorTropical;
  Color textColor = kColorBlack;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;

          containerColor = isSelected ? selectedColor : kColorOffline;
        });
      },
      child: Container(
        height: 52,
        color: containerColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.text,
                    style: TextStyle(
                      color:
                          isSelected ? kColorWater : textColor.withOpacity(0.5),
                    ),
                  ),
                  Center(
                    child: SvgPicture.asset(
                      widget.icon,
                      height: 18,
                      width: 18,
                      colorFilter:
                          const ColorFilter.mode(kColorWater, BlendMode.srcIn),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
