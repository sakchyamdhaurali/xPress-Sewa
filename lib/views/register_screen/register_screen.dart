import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
const RegisterScreen({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 10.w,
          right: 10.w,
        ),
        child: Column(
          children: [
            SizedBox(
              child: Column(
                children: [
                  Text("Register",
                  style: GoogleFonts.inter(
                    fontSize: 20.dp,
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                  Text("Create your own account"),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}