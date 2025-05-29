import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

Widget appOnBoardingPage() {
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
                        top: Adaptive.h(4), 
                        right: Adaptive.h(2),
                      ),
                      child: Text(
                        'Skip >',
                        style: TextStyle(
                          color: Colors.white, 
                          fontWeight: FontWeight.w400,
                          fontSize: 20.dp,
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

        SizedBox(
          height: 4.h,
        ),

       Text("Welcome to Xpress Sewa",
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.dp,
              fontWeight: FontWeight.w700,

            ),
            ),

      Container(
        height: 12.h,
        padding: EdgeInsets.only(
          top: 1.h,

         left: 10.w,
         right: 10.w,
        ),

        child: Text("Express Sewa is a fast, service-based app that quickly connects users to hire anything they need, anytime, anywhere.",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16.dp,
          color: const Color(0xFF333333),
          
        ),
        ),
        ),
        Spacer(),

        Container(
          margin: EdgeInsets.only(
            bottom: 8.h,
          ),
          width: 60.w,
          height: 5.h,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFF777777),
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: Text(
            "Get Started",
            style: TextStyle(
              fontSize: 18,
              color: const Color(0xFF4B4B4B),
            ),
            )
          ),
        ),       
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
