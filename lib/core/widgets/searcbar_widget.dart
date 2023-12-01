import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  color: kColorLaundry,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: kColorWater,
                    strokeAlign: BorderSide.strokeAlignInside,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text('AV'),
                ),
              ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(52),
                    color: kColorDisabled,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12, top: 8, bottom: 8, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Information'),
                        Container(
                          height: 24,
                          width: 24,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: kColorWater,
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/icons/svg/x24/line/time.svg',
                              height: 18,
                              width: 18,
                              colorFilter: const ColorFilter.mode(
                                kColorClean,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 4),
          Column(
            children: [
              SizedBox(
                height: 44,
                width: 44,
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: Center(
                    child: SvgPicture.asset(
                        'assets/icons/svg/x24/line/notification.svg'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
