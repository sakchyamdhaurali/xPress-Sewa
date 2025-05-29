import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
const OnboardingScreen({ super.key });

  @override
  Widget build(BuildContext context){
    return Container(
      color: const Color(0xFF41626A),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(child: Text("Onboarding")),
        ),
      ),
    );
  }
}