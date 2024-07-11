import 'package:flutter/material.dart';
import 'package:flutter_app_100/widgets/custom_card.dart';

class SummaryDetails extends StatelessWidget {
  const SummaryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: const Color(0xFF2F353E),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildDetails(
            'Cal',
            '305',
          ),
          buildDetails(
            'Steps',
            '30500',
          ),
          buildDetails(
            'Distance',
            '7km',
          ),
          buildDetails(
            'Sleep',
            '7hr',
          ),
        ],
      ),
    );
  }

  Widget buildDetails(String key, String value) {
    return Column(
      children: [
        Text(
          key,
          style: const TextStyle(
            fontSize: 11,
            color: Colors.grey,
          ),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 14.0),
        )
      ],
    );
  }
}
