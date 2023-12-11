import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ViewSectionAddress extends StatelessWidget {
  const ViewSectionAddress({
    super.key,
    required this.text,
    required this.buttonText,
    required this.address,
  });
  final String text;
  final String buttonText;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 8),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(address),
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
                  border: Border.all(
                    color: kColorWater,
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text(
                    buttonText,
                    style: const TextStyle(
                      fontSize: 16,
                      color: kColorBlack,
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
