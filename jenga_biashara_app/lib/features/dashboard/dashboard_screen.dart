import 'package:flutter/material.dart';
import 'package:jenga_biashara_app/widgets/language_menu.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "KipimoStore",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        actions: [
          LanguageMenu(onChanged: (lang) {}),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
    );
  }
}
