import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:login_app_firebase/src/common_widgets/text_component.dart';
import 'package:login_app_firebase/src/features/authentication/screens/dashboard_screen.dart';
import 'package:login_app_firebase/src/features/authentication/screens/sign_up_screen.dart';
import 'forget_pass_email.dart';
import 'forget_pass_phone.dart';
import 'package:http/http.dart';

  class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
  var showPassword = true;
  void login (String email , String password) async {
    try {
      Response response = await post (
          Uri.parse('https://reqres.in/api/login'),
        body: {
            'email' : email,
          'password' : password
        }
      );
      if(response.statusCode == 200){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DashboardScreen()),
        );
        var data = jsonDecode(response.body.toString());
        print(data);
        print("login successfully");
      } else {
        print("unsuccessfull register");
      }
    }catch(e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Image(
                height: MediaQuery.of(context).size.height * 0.3,
                  fit: BoxFit.cover,
                  image: const AssetImage("assets/images/color-book.png",),
              ),
              MyTextWidget(txt: "Welcome Back",font: 30,),
              const SizedBox(height: 7,),
              MyTextWidget(txt: "Make it work,make it fast,make it right",weight: FontWeight.normal,),
               SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
              Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller : emailController,
                        decoration: const InputDecoration(
                          labelText: "Email",
                          hintText: "Email",
                          prefixIcon: Icon(Icons.person_outline),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
                      TextFormField(
                        controller: passwordController,
                        obscureText: showPassword,
                        decoration:  InputDecoration(
                          labelText: "Password",
                          hintText: "Password",
                          prefixIcon: const Icon(Icons.fingerprint),
                          suffixIcon: showPassword ?  IconButton(
                              onPressed: (){
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                              icon: const Icon(Icons.remove_red_eye_rounded)) :
                              IconButton(
                              onPressed: (){
                                setState(() {
                                  showPassword = !showPassword;
                                });
                              }, icon: const Icon(Icons.remove_red_eye_outlined)),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
                      SizedBox(
                        width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: ElevatedButton(
                              onPressed: (){
                                login(emailController.text.toString(),passwordController.text.toString());
                              emailController.clear();
                              passwordController.clear();
                              },
                              child: const Text("LOGIN")
                          ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                      InkWell(
                        onTap: (){
                          showModalBottomSheet(context: context,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              builder: (context) => Container(
                            padding: const EdgeInsets.all(30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyTextWidget(txt: "Make Selection",font: 25,), const SizedBox(height: 3,),
                               const Text("Select one of the options given below to reset your password",style: TextStyle(fontSize: 16,letterSpacing: .6),),
                              const SizedBox(height: 30,),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(30),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.mail_outline,size: 50,),
                                        const SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            MyTextWidget(txt: "Email"),
                                            const Text("Reset via email-verification")
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 30,),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ForgetPhoneScreen()),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(30),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.mobile_friendly_outlined,size: 50,),
                                        const SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            MyTextWidget(txt: "Phone No"),
                                            const SizedBox(height: 3,),
                                            const Text("Reset via phone number verification",style: TextStyle(fontSize: 12),)
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          );
                        },
                        child: const Align(
                          alignment: Alignment.centerRight,
                          child: Text("Forget Password ?"),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                      SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.06,
                        child: OutlinedButton.icon(
                            onPressed: (){},
                            icon:  const Image(image: AssetImage("assets/images/google.png"),width: 20,height: 20,),
                            label: const Text("Login with Google",
                              style: TextStyle(color: Colors.black),)),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         const Text("Don't have an account!",style: TextStyle(fontSize: 16),),
                          TextButton(
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
                                );
                              },
                              child: const Text("Register",style: TextStyle(color: Colors.black,fontSize: 16),)
                          ),
                        ],
                      )
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

