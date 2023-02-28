import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:validators/validators.dart';
import 'package:flutter/material.dart';


class Resetpassword extends StatefulWidget {
  @override
  State<Resetpassword> createState() => _ResetpasswordState();
}
class _ResetpasswordState extends State<Resetpassword> {
  TextEditingController textEditingController = TextEditingController();
  bool isEmailCorrect = false;
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
  resetpassword() async {
    try {
      var  reset = await FirebaseAuth.instance.sendPasswordResetEmail(email: textEditingController.text
      );
      AwesomeDialog(context: context,title: "Arrived",body:Text("Reset password email sent"))..show();
      return reset;
    }on FirebaseAuthException catch(e){
      AwesomeDialog(context: context,title: "Error",body: Text(e.message.toString()))..show();
    }catch(e){
      print(e);
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  const SizedBox(height: 10),

                  Image.asset("assets/logo.png", width: 250, height: 175),

                  const SizedBox(height: 40),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text("Sign up ", style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),
                  Container(
                    height: 60,
                    width: 350,
                    child: TextFormField(
                      controller: textEditingController,
                      showCursor: true,
                      keyboardType: TextInputType.emailAddress,
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
                            ? const Icon(
                            Icons.close_sharp, color: Colors.red)
                            : const Icon(Icons.done, color: Colors.green),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: isEmailCorrect == false
                              ? BorderSide(
                              color: Colors.red.shade200, width: 2.0)
                              : BorderSide(
                              color: Colors.green.shade200, width: 2.0),
                        ),
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),

                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  MaterialButton(
                    height: 40.0,
                    minWidth: double.infinity,
                    onPressed: () async {
                      await resetpassword();
                      Navigator.of(context).pushReplacementNamed("login");

                    },

                    color:
                    isEmailCorrect == false
                        ? const Color(0xFF707070)
                        : Colors.green.shade400,
                    child: Text("Reset password",
                        style: TextStyle(color: Colors.white)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
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