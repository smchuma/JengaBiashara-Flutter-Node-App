import 'package:flutter/material.dart';
import 'package:flutter_app/features/dashboard/dashboard_screen.dart';
import 'package:flutter_app/theme/app_theme.dart';

void main() {
  runApp(const JengaApp());
}

class JengaApp extends StatelessWidget {
  const JengaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "JengaApp",
      debugShowCheckedModeBanner: false,
      initialRoute: "/dashboard",
      routes: {"/dashboard": (context) => DashboardScreen()},
      theme: AppTheme.lightTheme,
    );
  }
}
