import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
const OnboardingScreen({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text("Onboarding")),
    );
  }
}