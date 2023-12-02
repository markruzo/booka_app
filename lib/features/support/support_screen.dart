import 'package:booka_service_app/core/theme/colors.dart';
import 'package:booka_service_app/features/home/presentation/widgets/widgets/guide_box.dart';
import 'package:booka_service_app/features/home/presentation/widgets/widgets/secondary_guide_box.dart';
import 'package:booka_service_app/features/support/presentation/widgets/support_top.dart';
import 'package:flutter/material.dart';

class CustomScrollPhysics extends ScrollPhysics {
  final double scrollSpeedMultiplier;

  const CustomScrollPhysics({
    super.parent,
    required this.scrollSpeedMultiplier,
  });

  @override
  CustomScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return CustomScrollPhysics(
      parent: buildParent(ancestor),
      scrollSpeedMultiplier: scrollSpeedMultiplier,
    );
  }

  @override
  double applyPhysicsToUserOffset(ScrollMetrics position, double offset) {
    return super.applyPhysicsToUserOffset(
      position,
      offset * scrollSpeedMultiplier,
    );
  }
}

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SupportTop(
              leftTitle: 'Support',
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 12,
                  top: 4,
                ),
                child: ListView(
                  physics: const CustomScrollPhysics(
                    scrollSpeedMultiplier: 0.2,
                  ),
                  controller: scrollController,
                  children: [
                    const Text(
                      'Support',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kColorBlack,
                      ),
                    ),
                    const SizedBox(height: 18),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      controller: scrollController,
                      child: const Row(
                        children: [
                          PrimaryGuideBox(
                            badgeText: 'Community Guide',
                          ),
                          SizedBox(width: 8),
                          PrimaryGuideBox(
                            badgeText: 'Support',
                          ),
                          SizedBox(width: 8),
                          PrimaryGuideBox(
                            badgeText: 'Whats next',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    const ScondGuideBox(
                      badgeText: 'Preferences',
                    ),
                    const SizedBox(height: 12),
                    const ScondGuideBox(
                      badgeText: 'Order Guide',
                    ),
                    const SizedBox(height: 68),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
