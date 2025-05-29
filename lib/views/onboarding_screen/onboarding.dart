import 'package:flutter/material.dart';
import 'package:xpress_sewa/views/onboarding_screen/widgets.dart';



class OnboardingScreen extends StatefulWidget {
const OnboardingScreen({ super.key });

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {


    return Container(
      color: const Color(0xFF41626A),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: _controller,
            children: [
              appOnBoardingPage(
                context,
                _controller,
                title: "Welcome to Xpress Sewa", 
                subTitle: "Express Sewa is a fast, service-based app that quickly connects users to hire anything they need, anytime, anywhere.",
                index: 1
                ),
              appOnBoardingPage(
                context,
                _controller,
                title: "Get Services", 
                subTitle: "Take an Appointment for Super Fast Services",
                index: 2
                ),
              appOnBoardingPage(
                context,
                _controller,
                title: "Service Appointment", 
                subTitle: "Take an Appointment for Your Work",
                index: 3
                ),
        
            ],
          ),
        ),
      ),
    );
  }
}

