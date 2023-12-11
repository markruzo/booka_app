import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ViewSection extends StatelessWidget {
  const ViewSection({
    super.key,
    required this.text,
    required this.buttonText,
  });
  final String text;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 52,
                    width: 52,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: kColorFluffy,
                    ),
                    child: const Center(child: Text('AV')),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    text,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: kColorWater,
                ),
                child: Center(
                  child: Text(
                    buttonText,
                    style: const TextStyle(
                      fontSize: 16,
                      color: kColorClean,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
