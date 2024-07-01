import 'package:flutter/material.dart';
import 'package:food_ui/features/onboarding/presentation/onBoarding2.dart';
import 'package:food_ui/features/onboarding/presentation/onBoarding_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffEC2578)),
        useMaterial3: true,
      ),
      home: const OnBoarding1(),
    );
  }
}
