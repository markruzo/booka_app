import 'package:booka_service_app/core/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Updated import statement

class InputBox extends StatefulWidget {
  const InputBox(
      {super.key,
      required this.discription,
      required this.text,
      required this.icon});

  final String discription;
  final String text;
  final String icon;

  @override
  State<InputBox> createState() => _InputBoxState();
}

class _InputBoxState extends State<InputBox> {
  bool isSelected = false;
  Color containerColor = kColorClean;
  Color selectedColor = kColorTropical;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;

          containerColor = isSelected ? selectedColor : kColorClean;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        color: containerColor,
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  widget.icon,
                  height: 18,
                  width: 18,
                  colorFilter:
                      const ColorFilter.mode(kColorWater, BlendMode.srcIn),
                ),
                const SizedBox(width: 8),
                Text(widget.text),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(child: Text(widget.discription)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
