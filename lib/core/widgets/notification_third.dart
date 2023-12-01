import 'package:booka_service_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class NotificationThird extends StatelessWidget {
  const NotificationThird(
      {super.key, required this.textHeadline, required this.infoText});
  final String textHeadline;
  final String infoText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: kColorActive,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 6,
            height: 78,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              color: kColorWater,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            constraints: const BoxConstraints(maxWidth: 300),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textHeadline,
                  style: const TextStyle(
                    fontFamily: 'DM Sans',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: kColorBlack,
                  ),
                ),
                Text(
                  infoText,
                  style: const TextStyle(
                    fontFamily: 'DM Sans',
                    fontSize: 14,
                    color: kColorBlack,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  softWrap: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
