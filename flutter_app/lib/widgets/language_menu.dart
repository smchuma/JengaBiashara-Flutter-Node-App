import 'package:flutter/material.dart';

enum AppLanguage { en, sw }

class LanguageMenu extends StatefulWidget {
  const LanguageMenu({super.key, this.onChanged});

  final ValueChanged<AppLanguage>? onChanged;

  @override
  State<LanguageMenu> createState() => _LanguageMenuState();
}

class _LanguageMenuState extends State<LanguageMenu> {
  AppLanguage _current = AppLanguage.en;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<AppLanguage>(
      tooltip: "Change Language",
      initialValue: _current,
      onSelected: (value) {
        setState(() => _current = value);
        widget.onChanged?.call(value);
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: AppLanguage.en,
          child: Row(
            children: [
              Text('🇬🇧', style: TextStyle(fontSize: 18)),
              SizedBox(width: 8),
              Text('English'),
            ],
          ),
        ),
        PopupMenuItem(
          value: AppLanguage.sw,
          child: Row(
            children: const [
              Text('🇹🇿', style: TextStyle(fontSize: 18)),
              SizedBox(width: 8),
              Text('Kiswahili'),
            ],
          ),
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: CircleAvatar(
          radius: 14,
          backgroundColor: Colors.white.withOpacity(0),
          child: Text(
            _current == AppLanguage.en ? '🇬🇧' : '🇹🇿',
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
