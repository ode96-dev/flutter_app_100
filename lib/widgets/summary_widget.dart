import 'package:flutter/material.dart';
import 'package:flutter_app_100/widgets/pie_chart.dart';
import 'package:flutter_app_100/widgets/scheduled.dart';
import 'package:flutter_app_100/widgets/summary_details.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Chart(),
          Text(
            "Summary",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          SummaryDetails(),
          SizedBox(
            height: 40.0,
          ),
          Scheduled()
        ],
      ),
    );
  }
}
