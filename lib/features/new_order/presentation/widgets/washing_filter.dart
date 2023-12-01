import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class WashingFilter extends StatefulWidget {
  const WashingFilter({super.key, required this.text});
  final String text;

  @override
  _WashingFilterState createState() => _WashingFilterState();
}

class _WashingFilterState extends State<WashingFilter> {
  bool isContainerClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isContainerClicked = !isContainerClicked;
        });
      },
      child: Container(
        height: 40,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isContainerClicked ? kColorTropical : kColorOffline,
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: isContainerClicked ? kColorBlack : kColorBlack,
            ),
          ),
        ),
      ),
    );
  }
}
