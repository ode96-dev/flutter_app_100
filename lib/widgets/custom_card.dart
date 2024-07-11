import 'package:flutter/material.dart';
import 'package:flutter_app_100/const/constant.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  const CustomCard({super.key, required this.child, this.color, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
        color: color ?? cardBackgroundColor,
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(12.0),
        child: child,
      ),
    );
  }
}
