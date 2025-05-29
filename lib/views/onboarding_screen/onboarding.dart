import 'package:flutter/material.dart';
// import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:xpress_sewa/views/onboarding_screen/widgets.dart';

// class OnboardingScreen extends StatelessWidget {
// const OnboardingScreen({ super.key });

//   @override
//   Widget build(BuildContext context){
//     return Container(
//       color: const Color(0xFF41626A),
//       child: SafeArea(
//         child: Scaffold(
//           backgroundColor: Colors.white,
//           body: Center(child: Text("Onboarding")),
//         ),
//       ),
//     );
//   }
// }

class OnboardingScreen extends StatelessWidget {
const OnboardingScreen({ super.key });

  @override
  Widget build(BuildContext context) {

    return Container(
      color: const Color(0xFF41626A),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: PageView(
            controller: PageController(),
            children: [
              appOnBoardingPage(),
              appOnBoardingPage(),
              appOnBoardingPage(),
        
            ],
          ),
        ),
      ),
    );
  }
}

