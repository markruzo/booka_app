import 'package:booka_service_app/core/theme/colors.dart';
import 'package:booka_service_app/core/theme/new_constant.dart';
import 'package:booka_service_app/core/widgets/order_card.dart';
import 'package:booka_service_app/core/widgets/order_model.dart';
import 'package:booka_service_app/features/home/presentation/widgets/home_top.dart';
import 'package:booka_service_app/features/home/presentation/widgets/widgets/secondary_guide_box.dart';
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

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HomeTop(
              leftTitle: '{userName}',
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
                      'Active Jobs',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kColorBlack,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const SizedBox(height: 12),
                    OrderCard(
                      firstButtonText: 'Button',
                      secondButtonText: 'View Order',
                      order: Order(
                        orderNumber: '123',
                        status: 'Requested',
                        items: '2 x Regular Bags',
                        actions: 'Add actions',
                      ),
                      backgroundColor: ActionColor.actionRequested,
                      badgeColor: ActionColor.actionRequestedIcon,
                    ),
                    const SizedBox(height: 12),
                    const ScondGuideBox(
                      badgeText: 'Order Guide',
                    ),
                    const SizedBox(height: 12),
                    OrderCard(
                      firstButtonText: 'Button',
                      secondButtonText: 'View Order',
                      order: Order(
                        orderNumber: '456',
                        status: 'In-Transit',
                        items: '3 x Regular Bags',
                        actions: 'Add action',
                      ),
                      backgroundColor: kColorInTransit,
                      badgeColor: kColorInTransitIcon,
                    ),
                    const SizedBox(height: 12),
                    OrderCard(
                      firstButtonText: 'Button',
                      secondButtonText: 'View Order',
                      order: Order(
                        orderNumber: '789',
                        status: 'Laundry',
                        items: '1 x Regular Bags',
                        actions: 'Add action',
                      ),
                      backgroundColor: kColorLaundry,
                      badgeColor: kColorLaundryIcon,
                    ),
                    const SizedBox(
                      height: 60,
                    )
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
