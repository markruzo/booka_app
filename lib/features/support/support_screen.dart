import 'package:booka_service_app/core/theme/colors.dart';
import 'package:booka_service_app/features/home/presentation/widgets/widgets/guide_box.dart';
import 'package:booka_service_app/features/home/presentation/widgets/widgets/secondary_guide_box.dart';
import 'package:booka_service_app/features/support/presentation/widgets/custom_chip.dart';
import 'package:booka_service_app/features/support/presentation/widgets/question_box.dart';
import 'package:booka_service_app/features/support/presentation/widgets/support_box.dart';
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
                    const SizedBox(height: 8),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const CustomChip(
                            text: 'Alle',
                            color: kColorBlack,
                            textColor: kColorClean,
                          ),
                          const SizedBox(width: 8),
                          CustomChip(
                            text: 'Laundry',
                            color: kColorBlack.withOpacity(0.05),
                            textColor: kColorBlack,
                          ),
                          const SizedBox(width: 8),
                          CustomChip(
                            text: 'Requested',
                            color: kColorBlack.withOpacity(0.05),
                            textColor: kColorBlack,
                          ),
                          const SizedBox(width: 8),
                          CustomChip(
                            text: 'In-Transit',
                            color: kColorBlack.withOpacity(0.05),
                            textColor: kColorBlack,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      '24/7 Line',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kColorBlack,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const SupportBox(
                      title: 'Support Chat',
                      subline: 'Contact via Chat',
                      icon: 'assets/icons/svg/x24/line/chat.svg',
                    ),
                    const SizedBox(height: 8),
                    const SupportBox(
                      title: 'Call Support',
                      subline: 'Contact via Chat',
                      icon: 'assets/icons/svg/x24/line/user-add.svg',
                    ),
                    const SizedBox(height: 8),
                    const SupportBox(
                      title: 'Community',
                      subline: 'Contact via Chat',
                      icon: 'assets/icons/svg/x24/line/notification.svg',
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'FAQ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kColorBlack,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Column(
                      children: [
                        QuestionBox(
                          text: 'Who are Bookers?',
                        ),
                        SizedBox(height: 6),
                        QuestionBox(
                          text: 'Which postcodes are you in?',
                        ),
                        SizedBox(height: 6),
                        QuestionBox(
                          text: 'What do I out my laundry in?',
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Guides',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kColorBlack,
                      ),
                    ),
                    const SizedBox(height: 12),
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
