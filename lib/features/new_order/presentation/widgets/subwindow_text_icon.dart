import 'package:booka_service_app/core/theme/new_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubWindowTextIcon extends StatelessWidget {
  const SubWindowTextIcon({
    super.key,
    required this.headline,
  });
  final String headline;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    headline,
                    style: DMSans.kBodyLargeStyle,
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: SizedBox(
                      height: 24,
                      width: 24,
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/svg/x24/line/close-circle.svg',
                          height: 24,
                          width: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
