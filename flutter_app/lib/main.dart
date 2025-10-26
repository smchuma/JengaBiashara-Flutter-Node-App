import 'package:flutter/material.dart';
import 'package:flutter_app/features/dashboard/dashboard_screen.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0EA5A2),
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: Color(0xFFF8FAFC),
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 11, 123, 121),
          foregroundColor: Colors.white,
          elevation: 2,
          centerTitle: true,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xFF0EA5A2),
          foregroundColor: Colors.white,
        ),

        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            backgroundColor: Color(0xFF0EA5A2),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontWeight: FontWeight.w600),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        // Text
        textTheme: TextTheme(
          bodySmall: TextStyle(color: Color(0xFF475569)),
          bodyMedium: TextStyle(color: Color(0xFF0F172A)),
        ),
        useMaterial3: true,
      ),
    );
  }
}
