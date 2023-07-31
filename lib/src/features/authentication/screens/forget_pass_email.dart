import 'package:flutter/material.dart';
import 'package:login_app_firebase/src/features/authentication/screens/otp_screen.dart';

import '../../../common_widgets/text_component.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const SizedBox(height: 20,),
                const Image(image: AssetImage("assets/images/black-white.png"), height: 300,fit: BoxFit.cover, ),
                MyTextWidget(txt: "Forget Password",font: 25,), const SizedBox(height: 6,),
                const Text("Select one of the options given below to reset your password",style: TextStyle(fontSize: 16,letterSpacing: .6),),
                const SizedBox(height: 30,),
                 Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Email",
                            hintText: "Email",
                            labelStyle: TextStyle(color: Colors.black),
                            hintStyle: TextStyle(color: Colors.black),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black
                              ),
                            ),
                            prefixIcon: Icon(Icons.email_outlined,color: Colors.black,),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 30,),
                        SizedBox(
                          width: double.infinity,height: 45,
                          child: ElevatedButton(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const OtpScreen()),
                            );
                          },
                              child: MyTextWidget(txt: "Next"),
                          ),
                        )
                 ],
                    ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
