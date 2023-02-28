import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Find_a_job extends StatefulWidget {
  Find_a_job({super.key});

  @override
  State<Find_a_job> createState() => _Find_a_jobState();
}

class _Find_a_jobState extends State<Find_a_job> {
  final GlobalKey<FormState>formKey = GlobalKey<FormState>();
  final name =TextEditingController();

  final job =TextEditingController();

  final phone =TextEditingController();

  final adress =TextEditingController();

  final experience =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(15.0),
        child:
        Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key:formKey,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Fill the form",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 60,
                    width: 350,
                    child: TextFormField(
                      controller: name,
                      keyboardType:TextInputType.name ,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        labelText: "Name",
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),

                      ),
                      validator: (value){
                        if(value!.isNotEmpty){
                          return null;
                        }else{
                          return "Enter your name";
                        }
                      },
                    ),
                  ),

                  const SizedBox(height: 10),

                  Container(
                    height: 60,
                    width: 350,
                    child: TextFormField(
                      controller: job,
                      keyboardType:TextInputType.text ,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        labelText: "Job",
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),

                      ),
                      validator: (value){
                        if(value!.isNotEmpty){
                          return null;
                        }else{
                          return "Enter your job";
                        }
                      },
                    ),
                  ),


                  const SizedBox(height: 10),

                  Container(
                    height: 60,
                    width: 350,
                    child: TextFormField(
                      controller: phone,
                      keyboardType:TextInputType.phone ,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        labelText: "Tele.No",
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),

                      ),
                      validator: (value){
                        if(value!.isNotEmpty){
                          return null;
                        }else{
                          return "Enter a phone number";
                        }
                      },
                    ),
                  ),

                  const SizedBox(height: 10),

                  Container(
                    height: 60,
                    width: 350,
                    child: TextFormField(
                      controller: adress,
                      keyboardType:TextInputType.streetAddress ,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        labelText: "Enter your address",
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),

                      ),
                      validator: (value){
                        if(value!.isNotEmpty){
                          return null;
                        }else{
                          return "Enter your address";
                        }
                      },
                    ),
                  ),

                  const SizedBox(height: 20,),

                  Container(
                    height: 60,
                    width: 350,
                    child: TextFormField(
                      controller: experience,
                      keyboardType:TextInputType.text ,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        labelText: "Experience",
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),

                      ),
                      validator: (value){
                        if(value!.isNotEmpty){
                          return null;
                        }else{
                          return "Enter your experience";
                        }
                      },
                    ),
                  ),

                  const SizedBox(height: 30),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        final isValidForm = formKey.currentState!.validate();
                        if(isValidForm){
                          Map<String,dynamic> dataBase={
                            "field1 ":name.text,
                            "field2 ":job.text,
                            "field3 ":phone.text,
                            "field4 ":adress.text,
                            "field5 ":experience.text,
                          };
                          FirebaseFirestore.instance.collection("Find a job").add(dataBase);
                          name.clear();
                          job.clear();
                          phone.clear();
                          adress.clear();
                          experience.clear();

                        }else{
                          return null;


                        }
                      });



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
                            child: Text("Apply",
                              style:
                              Theme.of(context).textTheme.button!.copyWith(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),
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
                          Image.asset("assets/list.png" , height: 30 , width: 30),
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