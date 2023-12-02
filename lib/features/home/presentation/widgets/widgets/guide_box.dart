import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class PrimaryGuideBox extends StatelessWidget {
  const PrimaryGuideBox({
    super.key,
    required this.badgeText,
  });
  final String badgeText;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          height: 332,
          width: screenWidth - 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: kColorTropical,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: kColorWater,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 12, right: 12, top: 6, bottom: 6),
                        child: Text(
                          badgeText,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: kColorClean,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 44),
                const Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lorem ipsum dolor.',
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Ipsum dolor sit amet.',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: kColorBlack,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '3mins read',
                            style: TextStyle(
                              fontSize: 12,
                              color: kColorBlack,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 8.0,
          right: 8.0,
          child: Container(
              height: 32,
              width: 32,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: kColorBlack,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: kColorClean,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: kColorClean,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: kColorClean,
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
