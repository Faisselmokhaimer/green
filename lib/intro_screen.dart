import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green_business/home_page_main.dart';
import 'package:rive/rive.dart';
import 'animated_btn.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}
bool islogin = false;

class _OnboardingScreenState extends State<OnboardingScreen> {

  bool isSignInDialogShown = false;

  late RiveAnimationController _btnAnimationColtroller;

  @override
  void initState() {
    _btnAnimationColtroller = OneShotAnimation(
      "active",
      autoplay: false,
    );
    super.initState();
  }
  signout(){
    var user = FirebaseAuth.instance.currentUser;
    if(user == null){
      Navigator.of(context).pushNamed("login");
    }else{
      Navigator.of(context).pushNamed("Start");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: MediaQuery.of(context).size.width * 1.7,
            bottom: 200,
            left: 100,
            child: Image.asset("assets/Backgrounds/Spline.png"),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
            ),
          ),
          const RiveAnimation.asset("assets/RiveAssets/shapes.riv"),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: const SizedBox(),
            ),
          ),
          AnimatedPositioned(
            top: isSignInDialogShown ? -50.0 : 0.0,
            duration: const Duration(milliseconds: 240),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    SizedBox(
                      width: 260,
                      child: Column(
                        children: [
                          const Text(
                            "Learn & Get Money",
                            style: TextStyle(
                              fontSize: 60,
                              fontFamily: "Poppins",
                              height: 1.2,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Container(
                            width: 300,
                            child: const Text(
                              "Green Business IS The Best Way To Apply Your Idea and Get Money in A Short Time ,But You Have To Be Clever To Get alot of Money.",
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Spacer(flex: 2),

                    AnimatedBtn(
                      btnAnimationColtroller: _btnAnimationColtroller,
                      press: () {
                        _btnAnimationColtroller.isActive = true;
                        Future.delayed(
                          const Duration(milliseconds: 900),
                              ()async {
                            await signout();
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 70,)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}