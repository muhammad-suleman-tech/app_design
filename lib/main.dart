import 'package:flutter/material.dart';
import 'package:login_app_firebase/src/features/authentication/screens/dashboard_screen.dart';
import 'package:login_app_firebase/src/features/authentication/screens/splash_screen.dart';
import 'package:login_app_firebase/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.dartTheme,
      themeMode: ThemeMode.system,
      // home: const SplashScreen(),
      home: const SplashScreen(),
    );
  }
}



