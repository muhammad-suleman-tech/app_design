import 'package:flutter/material.dart';
import 'package:login_app_firebase/src/common_widgets/text_component.dart';
import 'package:login_app_firebase/src/features/authentication/screens/login_screen.dart';
import 'package:login_app_firebase/src/features/authentication/screens/sign_up_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.yellow,
      body: Container(
        padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
               Image(
               image: const AssetImage("assets/images/color-book.png",),
                height: MediaQuery.of(context).size.height * 0.5, fit: BoxFit.cover,
             ),
              Column(
                children: [
                  MyTextWidget(txt: "Build Awesome Aps",font: 30,),
                  MyTextWidget(txt: "Lets put your creativity on a development highway.",)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: OutlinedButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const HomeScreen()),
                            );
                          },
                        style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                        ),
                          child: MyTextWidget(
                            txt: "LOGIN",font: 18,
                          ),),),
                const SizedBox(width: 20,),
                  Expanded(
                      child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SignUpScreen()),
                            );
                          },
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                        ),
                          child: MyTextWidget(
                            txt: "SIGN UP",
                          ),),),
                ],
              )
            ],
          ),
      ),
    );
  }
}
