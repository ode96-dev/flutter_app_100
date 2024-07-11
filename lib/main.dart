import 'package:flutter/material.dart';
import 'package:flutter_app_100/const/constant.dart';
import 'package:flutter_app_100/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: backgroundColor,
        brightness: Brightness.dark,
      ),
      home: const MainScreen(),
    );
  }
}
