import 'package:flutter/material.dart';
import 'package:flutter_app_100/models/health_model.dart';

class HealthDetails {
  final healthData = [
    HealthModel(
      icon: Icons.fireplace,
      value: "400",
      title: "Calories burned",
    ),
    HealthModel(
      icon: Icons.accessibility,
      value: "20,000",
      title: "Steps",
    ),
    HealthModel(
      icon: Icons.social_distance,
      value: "7km",
      title: "Distance",
    ),
    HealthModel(
      icon: Icons.bed,
      value: "7h48m",
      title: "Sleep",
    )
  ];
}
