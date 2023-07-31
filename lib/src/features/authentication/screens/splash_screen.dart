import 'package:flutter/material.dart';
import 'package:login_app_firebase/src/common_widgets/text_component.dart';
import 'package:login_app_firebase/src/constants/app_images.dart';
import 'package:login_app_firebase/src/features/authentication/screens/welcome_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

 bool animate = false;
 @override
  void initState() {
    super.initState();
    startAnimation();
 }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
            body: Stack(
              children:  [
                AnimatedPositioned(
                 duration: const Duration(milliseconds: 1600),
                  top: animate ? -40 : -120,
                   left: animate ? 0 : -30,
                    child: const Image(
                      height: 200,width: 200,
                        image: AssetImage(
                            AppImages.yellowLogo
                        ),),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  top: 140,
                    left: animate ? 100 : -190,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 2000),
                      opacity: animate ? 1 : 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyTextWidget(txt: "./appable",weight: FontWeight.normal,),
                          MyTextWidget(txt: "Learn to code",font: 30,),
                          MyTextWidget(txt: "free for everyone",font: 30,),
                        ],
                      ),
                    )
                ),
                //   AnimatedPositioned(
                //    duration: const Duration(milliseconds: 1600),
                //      top: animate ? 250 : 400,
                //      left: 40,
                //     child:  animate ?  const Image(
                //         height: 350,
                //         width: 400,
                //         fit: BoxFit.cover,
                //         image: AssetImage("assets/images/black-white.png") , ) : const  Text("data"),
                // ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  top: animate ? 250 : 400,
                  left: 40,
                  child: const Image(
                    height: 350,
                    width: 400,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/black-white.png") , ) ,
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  bottom: 50,
                    right: animate ? 30 : -30,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 2000),
                      opacity: animate ? 1 : 0,
                      child: Container(
                  height: 60,width: 60,
                   decoration: BoxDecoration(
                       color:const Color(0xFFF1C512),
                       borderRadius: BorderRadius.circular(30)
                   ),
                ),
                    ),),
              ],
            ),
      ),
    );
  }

  Future startAnimation() async {
   await Future.delayed(const Duration(milliseconds: 1000));
   setState(() {
     animate = true;
   });
   await Future.delayed(const Duration(milliseconds: 4000));
   setState(() {
     animate = false;
   });
  await Future.delayed(const Duration(milliseconds: 1000));
    navigateScreen();
  }

  void navigateScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const WelcomeScreen()),
    );
  }
}
