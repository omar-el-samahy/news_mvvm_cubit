import 'package:flutter/material.dart';
import 'package:news_cubit_mvvm/features/home_screen/presentation/home_screen.dart';
import 'package:news_cubit_mvvm/features/splash/presentation/widgets/splash_screen.dart';

void main() {
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "home": (context) => HomeScreen(),
      },
      home: SplashScreen(),
    );
  }
}
