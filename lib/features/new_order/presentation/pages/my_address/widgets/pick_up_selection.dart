import 'package:booka_service_app/core/styles/colors.dart';
import 'package:flutter/material.dart';

class PickUpSelection extends StatefulWidget {
  const PickUpSelection({
    super.key,
    required this.text,
    required this.icon,
    required Null Function() onTap,
  });

  final String text;
  final String icon;

  @override
  _PickUpSelectionState createState() => _PickUpSelectionState();
}

class _PickUpSelectionState extends State<PickUpSelection> {
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
        if (isSelected) {
          Future.delayed(const Duration(milliseconds: 250), () {
            Navigator.of(context).pop();
          });
        }
      },
      child: Container(
        height: 58,
        color: containerColor,
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.text,
                    style: TextStyle(
                      color: isSelected ? kColorBlack : textColor,
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
