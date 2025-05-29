import 'package:flutter/material.dart';
import 'package:xpress_sewa/views/onboarding_screen/widgets.dart';



class OnboardingScreen extends StatelessWidget {
const OnboardingScreen({ super.key });

  @override
  Widget build(BuildContext context) {
  final PageController _controller = PageController();


    return Container(
      color: const Color(0xFF41626A),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: PageView(
            controller: PageController(),
            children: [
              appOnBoardingPage(
                context,
                _controller,
                title: "Welcome to Xpress Sewa", 
                subTitle: "Express Sewa is a fast, service-based app that quickly connects users to hire anything they need, anytime, anywhere."),
              appOnBoardingPage(
                context,
                _controller,
                title: "Get Services", 
                subTitle: "Take an Appointment for Super Fast Services"
                ),
              appOnBoardingPage(
                context,
                _controller,
                title: "Service Appointment", 
                subTitle: "Take an Appointment for Your Work"
                ),
        
            ],
          ),
        ),
      ),
    );
  }
}

