import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Center(
          child: Text(
            'SplashViewBody is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
