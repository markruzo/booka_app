import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBarItem extends StatelessWidget {
  const BottomBarItem({
    super.key,
    required this.index,
    required this.selectedIndex,
    required this.labels,
    required this.iconPaths,
    required this.onTap,
  });
  final int index;
  final int selectedIndex;
  final List<String> labels;
  final List<String> iconPaths;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: SizedBox(
        height: 49,
        width: 78,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: Center(
                child: SvgPicture.asset(
                  iconPaths[index],
                  height: 24,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    selectedIndex == index ? kColorWater : kColorBlack,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            Text(
              labels[index],
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: selectedIndex == index ? kColorWater : kColorBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
