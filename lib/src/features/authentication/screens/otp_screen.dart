import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                      Text("CO\nDE",style: GoogleFonts.montserrat(
                      fontSize: 80,fontWeight: FontWeight.bold),
                      ),
                  Text("Verification",style: GoogleFonts.montserrat(fontSize: 20,fontWeight: FontWeight.bold),),
                 const SizedBox(height: 30,),
                  Text("We have send the verification code at",style: GoogleFonts.montserrat(fontSize: 16),),
                  const SizedBox(height: 5,),
                  Text("adamcplen333@gmail.com",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 30,),
                  OtpTextField(
                    numberOfFields: 6,
                    fillColor: Colors.black.withOpacity(0.1),
                    filled: true,
                    cursorColor: Colors.black,
                    borderColor: Colors.black,
                    focusedBorderColor: Colors.black,
                    onSubmit: (value){ print("OTP code is $value"); },
                  ),
                  const SizedBox(height: 30,),
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black87,
                          foregroundColor: Colors.white// Background color
                      ),
                      child: const Text("SIGNUP"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
