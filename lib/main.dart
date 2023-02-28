import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:green_business/Store/constants.dart';
import 'package:green_business/ads.dart';
import 'package:green_business/intro_screen.dart';
import 'package:green_business/login.dart';
import 'package:green_business/signup.dart';


Future main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color(0xfff2f9fe),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(25),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
      home: const OnboardingScreen(),

      routes:
      {
        'home' : (context) =>  SignupPage(),
        'login' : (context) => LoginPage(),
        'marketing' : (context) => Order(),
      },
    );
  }
}