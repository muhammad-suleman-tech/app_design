import 'package:flutter/material.dart';
import 'package:login_app_firebase/src/features/authentication/screens/login_screen.dart';
import 'package:http/http.dart';
import '../../../common_widgets/text_component.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login (String email , String password) async {
    try {
      Response response = await post (
          Uri.parse('https://reqres.in/api/register'),
          body: {
            'email' : email,
            'password' : password
          }
      );
      if(response.statusCode == 200){
        print("register successfully");
      } else {
        print("unsuccessfull register");
      }
    }catch(e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(30),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: MediaQuery.of(context).size.height * 0.2,
                    fit: BoxFit.cover,
                    image: const AssetImage("assets/images/color-book.png",),
                  ),
                  MyTextWidget(txt: "Get On Board!",font: 30,),
                  const SizedBox(height: 7,),
                  MyTextWidget(txt: "Create your profile to start your journey.",weight: FontWeight.normal,),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
             Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Full Name",
                      hintText: "Full Name",
                      prefixIcon: Icon(Icons.person_outline),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: "Email",
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email_outlined),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Phone",
                      hintText: "Phone",
                      prefixIcon: Icon(Icons.call),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                  TextFormField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      labelText: "Password",
                      hintText: "Password",
                      prefixIcon: Icon(Icons.fingerprint),
                      border: OutlineInputBorder(),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomeScreen()),
                          );
                        },
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
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                  const Align(
                    alignment: Alignment.center,
                    child: Text("OR"),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: OutlinedButton.icon(
                        onPressed: (){},
                        icon:  const Image(image: AssetImage("assets/images/google.png"),width: 20,height: 20,),
                        label: const Text("Login with Google",
                          style: TextStyle(color: Colors.black),)),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account!",style: TextStyle(fontSize: 16),),
                      TextButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const HomeScreen()),
                            );
                          },
                          child: const Text("Login",style: TextStyle(color: Colors.black,fontSize: 16),)
                      ),
                    ],
                  )



                ]
              ),
            ),
          ),
        )
    );
  }
}
