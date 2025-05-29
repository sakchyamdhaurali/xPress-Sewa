import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xpress_sewa/views/main_screen/main_screen.dart';

Widget appOnBoardingPage(
BuildContext context,
PageController controller,
{required String title, required String subTitle, int index = 0}) {
  return Column(
    children: [
      Stack(
        children: [
          // Top clipped section
          ClipPath(
            clipper: DiagonalClipper(),
            child: Container(
              height: 50.h,
              color: const Color(0xFF41626A),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: Adaptive.h(3),
                        right: Adaptive.h(3),
                      ),
                      child: Text(
                        'Skip >',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 18.dp,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      SizedBox(height: 4.h),

      Text(
        title,
        style: GoogleFonts.inter(
          color: Colors.black,
          fontSize: 22.dp,
          fontWeight: FontWeight.w700,
        ),
      ),

      Container(
        height: 10.h,
        padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 1.h),

        child: Center(
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 15.dp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF333333),
            ),
          ),
        ),
      ),
      Spacer(),
      _nextButton(index, controller, context)
    ],
  );
}

// Custom Clipper for diagonal bottom
class DiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height); // bottom-left
    path.lineTo(size.width, size.height - 50); // diagonal up to right
    path.lineTo(size.width, 0.0); // top-right
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}



Widget _nextButton(int index, PageController controller, BuildContext context) {
  // final h = MediaQuery.of(context).size.height;
  // final w = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.fastOutSlowIn,
        );
      } else {
        Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainScreen()),
      );
      }
    },
    child: Container(
    margin: EdgeInsets.only(bottom: 8.h),
    width: 60.w,
    height: 5.h,
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color(0xFF777777),
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Center(
      child: Center(
        child: Text(
          index == 1
              ? "Get Started"
              : index == 2
              ? "Next"
              : index == 3
              ? "Home"
              : "",
        style: GoogleFonts.inter(
          fontSize: 18.dp,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF4B4B4B),
        ),
      ),
    ),
  ),
      ),
  );
}