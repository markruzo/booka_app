import 'package:booka_service_app/core/styles/colors.dart';
import 'package:booka_service_app/core/widgets/bootom_bar.dart';
import 'package:booka_service_app/features/new_order/presentation/pages/complete_order/complete_order.dart';
import 'package:booka_service_app/features/new_order/presentation/pages/my_address/my_address.dart';
import 'package:booka_service_app/features/new_order/presentation/pages/washing_prefs/washing_preferences.dart';
import 'package:booka_service_app/features/new_order/presentation/widgets/navigation_top.dart';
import 'package:flutter/material.dart';

class NewOrderScreen extends StatefulWidget {
  const NewOrderScreen({super.key});

  @override
  State<NewOrderScreen> createState() => _NewOrderScreenState();
}

class _NewOrderScreenState extends State<NewOrderScreen> {
  final controller = PageController();
  bool isLastPage = false;
  bool isLoading = false;

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: kColorClean,
            ),
            PageView(
              onPageChanged: (index) {
                setState(() => isLastPage = index == 2);
              },
              controller: controller,
              children: const [
                MyAddressPage(),
                WashingPreferences(),
                CompleteOrder(),
              ],
            ),
            Positioned(
              bottom: 16.0,
              right: 16.0,
              left: 16.0,
              child: GestureDetector(
                onTap: () async {
                  if (isLoading) {
                    return;
                  }

                  if (isLastPage) {
                    setState(() {
                      isLoading = true;
                    });

                    await Future.delayed(const Duration(seconds: 2));

                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const BottomBar(),
                      ),
                    );
                  } else {
                    controller.nextPage(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: Container(
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: kColorWater,
                  ),
                  child: Center(
                    child: isLoading
                        ? FutureBuilder(
                            future: Future.delayed(const Duration(seconds: 3)),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const SizedBox(
                                  height: 24,
                                  width: 24,
                                  child: CircularProgressIndicator(
                                    color: kColorClean,
                                    strokeWidth: 3,
                                  ),
                                );
                              } else {
                                return const SizedBox.shrink();
                              }
                            },
                          )
                        : Text(
                            isLastPage ? 'Create' : 'Next',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: kColorClean,
                            ),
                          ),
                  ),
                ),
              ),
            ),
            const NavigationTop(),
          ],
        ),
      ),
    );
  }
}
