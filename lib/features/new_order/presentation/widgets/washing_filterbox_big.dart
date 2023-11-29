import 'package:booka_service_app/core/styles/colors.dart';
import 'package:flutter/material.dart';

class WashingFilterBoxBig extends StatefulWidget {
  const WashingFilterBoxBig({super.key, required this.selection});
  final String selection;

  @override
  State<WashingFilterBoxBig> createState() => _WashingFilterBoxBigState();
}

class _WashingFilterBoxBigState extends State<WashingFilterBoxBig> {
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
        height: 44,
        width: 167,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isContainerClicked ? kColorTropical : kColorOffline,
        ),
        child: Center(
          child: Center(
            child: Text(
              widget.selection,
              style: TextStyle(
                color: isContainerClicked ? kColorBlack : kColorBlack,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
