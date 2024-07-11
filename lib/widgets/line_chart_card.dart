import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_100/const/constant.dart';
import 'package:flutter_app_100/data/line_data.dart';
import 'package:flutter_app_100/widgets/custom_card.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();

    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Steps overview',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(
              LineChartData(
                lineTouchData: const LineTouchData(
                  handleBuiltInTouches: true,
                ),
                gridData: const FlGridData(
                  show: false,
                ),
                titlesData: FlTitlesData(
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: false,
                    ),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: false,
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        return data.bottomTitle[value.toInt()] != null
                            ? SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: Text(
                                  data.bottomTitle[value.toInt()].toString(),
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey[400],
                                  ),
                                ),
                              )
                            : const SizedBox();
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      reservedSize: 40.0,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        return data.leftTitle[value.toInt()] != null
                            ? SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: Text(
                                  data.leftTitle[value.toInt()].toString(),
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey[400],
                                  ),
                                ),
                              )
                            : const SizedBox();
                      },
                    ),
                  ),
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                lineBarsData: [
                  LineChartBarData(
                    color: selectionColor,
                    barWidth: 2.5,
                    belowBarData: BarAreaData(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          selectionColor.withOpacity(
                            0.5,
                          ),
                          Colors.transparent,
                        ],
                      ),
                      show: true,
                    ),
                    dotData: const FlDotData(
                      show: false,
                    ),
                    spots: data.spots,
                  ),
                ],
                minX: 0,
                maxX: 120.0,
                maxY: 105.0,
                minY: -5.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
