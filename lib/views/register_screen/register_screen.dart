import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
const RegisterScreen({ super.key });

  @override
  Widget build(BuildContext context){
    return Container(
      color: const Color(0xFF41626A),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.only(
              left: 6.w,
              right: 6.w,
              top: 2.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                  child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Register",
                      style: GoogleFonts.inter(
                        fontSize: 18.dp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF333333),
                      ),
                      ),
                      Text("Create your own account",
                      style: GoogleFonts.inter(
                        fontSize: 15.dp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF555555),
                      ),
                      ),
                    ],
                  ),
                ),

                Text("Username",
               style: GoogleFonts.inter(
                        fontSize: 16.dp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF555555),
                      ),
              ),

              Container(
                height: 6.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFF787878),
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                    )
                  ),
                ),
              ),

              SizedBox(height: 1.h,),

               Text("Email",
               style: GoogleFonts.inter(
                        fontSize: 16.dp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF555555),
                      ),
              ),

              Container(
                height: 6.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFF787878),
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                    )
                  ),
                ),
              ),
              SizedBox(height: 1.h,),


              Text("Password",
               style: GoogleFonts.inter(
                        fontSize: 16.dp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF555555),
                      ),
              ),

              Container(
                height: 6.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFF787878),
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                    )
                  ),
                ),
              ),

              SizedBox(height: 3.h,),

             Container(
                height: 6.h,
                decoration: BoxDecoration(
                  color: const Color(0xFF41626A),
                  border: Border.all(
                    color: const Color(0xFF787878),
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text("SignUp with OTP",
                  style: GoogleFonts.inter(
                    color: const Color(0xFFFFFFFF),
                    fontSize: 18.dp,
                    fontWeight: FontWeight.w500,
                  ),
                  ))
              ),

              SizedBox(height: 3.h,),
             
             Padding(
           padding: const EdgeInsets.symmetric(horizontal: 30),
           child: Row(
           children: <Widget>[
           Expanded(child: Divider(thickness: 1, color:  const Color(0xFF000000))),
           Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                 "or sign up with", // Your text
              style: GoogleFonts.inter(
                fontSize: 16, 
                fontWeight: FontWeight.w600,
                color: const Color(0xFF333333),
                ),
          ),
        ),
        Expanded(child: Divider(thickness: 1, color: const Color(0xFF000000))),
      ],
    ),
  ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}