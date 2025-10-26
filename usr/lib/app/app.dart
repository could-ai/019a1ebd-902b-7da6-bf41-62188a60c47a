import 'package:flutter/material.dart';
import 'package:couldai_user_app/app/theme/app_theme.dart';
import 'package:couldai_user_app/features/home/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AshiVion Templates',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system, // Or make this configurable
      home: const HomeScreen(),
    );
  }
}
