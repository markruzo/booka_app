import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListSection extends StatelessWidget {
  const ListSection({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
    required this.secondIcon,
    this.toggle,
  });
  final String icon;
  final String? secondIcon;
  final String text;
  final Color color;
  final String? toggle;

  // final VoidCallBack? secondIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                height: 24,
                width: 24,
                child: Center(
                  child: SvgPicture.asset(
                    icon,
                    height: 20,
                    width: 20,
                    colorFilter: ColorFilter.mode(
                      color,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: color,
                      ),
                    ),
                    if (secondIcon != null)
                      SizedBox(
                        height: 24,
                        width: 24,
                        child: Center(
                          child: SvgPicture.asset(
                            secondIcon!,
                            height: 20,
                            width: 20,
                            colorFilter: ColorFilter.mode(
                              kColorBlack.withOpacity(0.3),
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 2),
                Divider(
                  color: kColorBlack.withOpacity(0.1),
                  thickness: 1,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
