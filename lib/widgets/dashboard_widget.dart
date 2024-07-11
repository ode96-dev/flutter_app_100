import 'package:flutter/material.dart';
import 'package:flutter_app_100/util/responsive.dart';
import 'package:flutter_app_100/widgets/activity_details_card.dart';
import 'package:flutter_app_100/widgets/bar_graph_widget.dart';
import 'package:flutter_app_100/widgets/header_widget.dart';
import 'package:flutter_app_100/widgets/line_chart_card.dart';
import 'package:flutter_app_100/widgets/summary_widget.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 18.0,
            ),
            const HeaderWidget(),
            const SizedBox(
              height: 18.0,
            ),
            const ActivityDetailsCard(),
            const SizedBox(
              height: 18.0,
            ),
            const LineChartCard(),
            const SizedBox(
              height: 18.0,
            ),
            const BarGraphWidget(),
            const SizedBox(
              height: 18.0,
            ),
            if (Responsive.isTablet(context)) const SummaryWidget()
          ],
        ),
      ),
    );
  }
}
