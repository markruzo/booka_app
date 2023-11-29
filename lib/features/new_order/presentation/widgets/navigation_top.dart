import 'package:booka_service_app/core/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavigationTop extends StatelessWidget {
  const NavigationTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: SizedBox(
        height: 44,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kColorWater,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/svg/x24/icon-x.svg',
                      height: 18,
                      width: 18,
                      colorFilter: const ColorFilter.mode(
                        kColorClean,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
