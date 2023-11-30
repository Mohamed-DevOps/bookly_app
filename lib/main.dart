import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Constants.primaryColor),
        scaffoldBackgroundColor: Constants.primaryColor,
        // fontFamily: 'GT Sectra Fine',
      ),
      home: const SplashView(),
    );
  }
}
