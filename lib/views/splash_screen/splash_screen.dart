import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:xpress_sewa/views/onboarding_screen/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ super.key });

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //Set time for splash screen display
    Future.delayed(const Duration(seconds: 3), (){
      if (!mounted) return;
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const OnboardingScreen()));
    }

    );
    }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF41626A),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Container(
                  height: 50.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFF41626A),
                      
                  ),
                ),
              ),
          
              Center(child: Image.asset("assets/branding.png"))
          
            
            ],
          ),
          
        ),
      ),
    );
  }
}