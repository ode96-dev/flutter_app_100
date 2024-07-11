import 'package:flutter/material.dart';
import 'package:flutter_app_100/models/bar_graph_model.dart';
import 'package:flutter_app_100/models/graph_model.dart';

class BarData {
  final data = [
    BarGraphModel(
      label: "Activity Level",
      color: const Color(0xFFFEB95A),
      graph: [
        GraphModel(x: 0, y: 8),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 7),
        GraphModel(x: 3, y: 4),
        GraphModel(x: 4, y: 4),
        GraphModel(x: 5, y: 6),
      ],
    ),
    BarGraphModel(
      label: "Hydration Level",
      color: const Color(0xFF20AEF3),
      graph: [
        GraphModel(x: 0, y: 7),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 7),
        GraphModel(x: 3, y: 4),
        GraphModel(x: 4, y: 4),
        GraphModel(x: 5, y: 10),
      ],
    ),
    BarGraphModel(
      label: "Nutrition Level",
      color: const Color.fromARGB(255, 67, 138, 72),
      graph: [
        GraphModel(x: 0, y: 7),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 7),
        GraphModel(x: 3, y: 4),
        GraphModel(x: 4, y: 4),
        GraphModel(x: 5, y: 10),
      ],
    )
  ];

  final label = ['M', 'T', 'W', 'T', 'F', 'S'];
}
