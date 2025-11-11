import 'package:flutter/material.dart';
import 'package:jenga_biashara_app/features/dashboard/dashboard_screen.dart';
import 'package:jenga_biashara_app/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "JengaBiashara",
      debugShowCheckedModeBanner: false,
      initialRoute: "/dashboard",
      routes: {"/dashboard": (context) => DashboardScreen()},
      theme: AppTheme.lightTheme,
    );
  }
}
