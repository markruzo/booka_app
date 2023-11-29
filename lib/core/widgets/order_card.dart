import 'package:booka_service_app/core/styles/colors.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
    required this.firstButtonText,
    required this.secondButtonText,
  });
  final String firstButtonText;
  final String secondButtonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: kColorBlack.withOpacity(0.1),
          )),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: [
                const Text('{Order#123}'),
                const SizedBox(width: 18),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: kColorRequested,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 10, top: 5, bottom: 5),
                    child: Row(
                      children: [
                        Container(
                          height: 12,
                          width: 12,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: kColorRequestedIcon,
                          ),
                        ),
                        const SizedBox(width: 4),
                        const Text('Requested'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('{Items}'),
                Text('{2 x Regular Bags}'),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('{Actions}'),
                Text('{Add actions}'),
              ],
            ),
            const Divider(
              color: kColorDisabled,
              height: 18,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: GestureDetector(
                      onTap: () {
                        //...
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: kColorClean,
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              firstButtonText,
                              style: const TextStyle(
                                color: kColorBlack,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Placeholder(),
                        ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: kColorWater,
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              secondButtonText,
                              style: const TextStyle(
                                color: kColorClean,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
