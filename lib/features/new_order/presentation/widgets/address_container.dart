import 'package:booka_service_app/core/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddressContainer extends StatelessWidget {
  const AddressContainer({
    super.key,
    required this.address,
  });
  final String address;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'My Address is',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 6),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: kColorBlack.withOpacity(0.3))),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        address,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/svg/x24/icon-chevron-down.svg',
                          height: 24,
                          width: 24,
                          colorFilter: ColorFilter.mode(
                              kColorBlack.withOpacity(0.5), BlendMode.srcIn),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
