import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green_business/home_page_main.dart';
import 'package:green_business/reset_password.dart';
import 'package:green_business/signup.dart';
import 'package:validators/validators.dart';


class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController textEditingController = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  bool isEmailCorrect = false;

  bool _isVisible = false;
  // ignore: prefer_final_fields
  bool _isPassword8char = false;
  // ignore: prefer_final_fields
  bool _hasOneNumber = false;

  onPasswordChanged(password) {
    setState(() {
      final numbericRegex = RegExp(r'[0-9]');
      _isPassword8char = false;
      if (password.length >= 8) {
        _isPassword8char = true;
      }

      _hasOneNumber = false;
      if (numbericRegex.hasMatch(password)) {
        _hasOneNumber = true;
      }
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  dynamic snackBar = SnackBar(
    duration: const Duration(milliseconds: 1500),
    content: const Text("Your Login is Completed"),
    action: SnackBarAction(label: "Got it", onPressed: () {}),
  );
  signin() async {
    if(isEmailCorrect && _isPassword8char && _hasOneNumber == true) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: textEditingController.text,
          password: textEditingController2.text,
        );

        return userCredential;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          AwesomeDialog(context: context,title: "Error",body: Text("No user found for that email",style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          ),
          )..show();
        } else if (e.code == 'wrong-password') {
          AwesomeDialog(context: context,title: "Error",body: Text("Wrong password provided for that user",style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          )
          )..show();

        }
      }catch (e) {
        print(e);
      }


    }else{
      return null;

    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[

                  const SizedBox(height: 10),

                  Image.asset("assets/logo.png",
                      width:400,
                      height:250),

                  const SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text("Sign in ",style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: textEditingController,
                    showCursor: true,
                    onChanged: (val) {
                      setState(() {
                        isEmailCorrect = isEmail(val);
                      });
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.grey.shade500,
                      ),
                      suffixIcon: isEmailCorrect == false
                          ? const Icon(Icons.close_sharp, color: Colors.red)
                          : const Icon(Icons.done, color: Colors.green),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: isEmailCorrect == false
                            ? BorderSide(color: Colors.red.shade200, width: 2.0)
                            : BorderSide(color: Colors.green.shade200, width: 2.0),
                      ),
                      labelText: "Email",
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                    ),
                  ),

                  const SizedBox(height: 30.0),

                  TextField(
                    keyboardType: TextInputType.text,
                    controller: textEditingController2,
                    onChanged: (password) => onPasswordChanged(password),
                    obscureText: !_isVisible,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isVisible = !_isVisible;
                          });
                        },
                        icon: _isVisible
                            ? const Icon(Icons.visibility, color: Colors.black)
                            : Icon(Icons.visibility_off, color: Colors.grey.shade600),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      labelText: "Password",
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Resetpassword()));
                        }, child: const Text("Forgot your password?")),
                      ],
                    ),
                  ),

                  const SizedBox(height: 15.0),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an Account?"),
                      TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                      }, child: const Text("Join To Us Now")),
                    ],
                  ),

                  const SizedBox(height: 10.0),

                  MaterialButton(
                    onPressed: () async{
                      {
                        UserCredential user = await signin();
                        if (user != null){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
                        }
                      }
                    },
                    child: Container(
                      height: 60.0,
                      width: 230.0,
                      decoration: BoxDecoration(
                        boxShadow: const [BoxShadow(
                          offset: Offset(0.0 , 20.0),
                          blurRadius: 30.0,
                          color: Colors.black12,
                        )],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      child: Row(
                        children: <Widget> [
                          Container(
                            height: 70.0,
                            width: 190.0,
                            padding: const EdgeInsets.symmetric(vertical: 12.0 , horizontal: 12.0),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text("Welcome Back ^_^",
                                style: Theme.of(context).textTheme.button!.copyWith(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),
                              ),
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(75.0),
                                topLeft: Radius.circular(75.0),
                                bottomRight: Radius.circular(200.0),
                              ),
                            ),
                          ),
                          Image.asset("assets/home.png" , height: 30, width: 30,),
                        ],
                      ),
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