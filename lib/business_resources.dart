import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class apply extends StatefulWidget {



  @override
  State<apply> createState() => _applyState();
}
TextEditingController name = TextEditingController();
TextEditingController money = TextEditingController();
TextEditingController comment = TextEditingController();
TextEditingController address = TextEditingController();
TextEditingController idea = TextEditingController();

final GlobalKey<FormState> formKey = GlobalKey<FormState>();
class _applyState extends State<apply> {
  int currentindex = 0;
  final screens = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection:Axis.vertical ,

        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formKey,
          child: Container(
            child: Column(
              children: [
                const SizedBox(height:20),

                const Text('Money',style:TextStyle(fontWeight: FontWeight.bold,fontSize:28 )),

                const SizedBox(height: 20),
                Image.asset("assets/money.png",height: 175,width: 250,),
                const SizedBox(height:20),

                Container(
                  width:350 ,
                  height:60 ,
                  child:TextFormField(
                    keyboardType: TextInputType.name,
                    controller: name,
                    decoration:InputDecoration(
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
                      labelStyle:TextStyle(fontSize:16) ,
                    ) ,
                    validator: (value){
                      if(value!.isNotEmpty){
                        return null;
                      }else{
                        return "Enter your name";
                      }
                    },
                  ) ,
                ),

                const SizedBox(height: 20),

                Container(
                  width:350,
                  height:60,
                  child:TextFormField(
                    keyboardType: TextInputType.number,
                    controller: money,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      labelText: "Money",
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                    ),
                    validator: (value){
                      if(value!.isNotEmpty){
                        return null;
                      }else{
                        return "Enter The Money You have";
                      }
                    },
                  ) ,
                ),

                const SizedBox(height: 20),

                Container(
                  width:350 ,
                  height:60 ,
                  child:TextFormField(
                    keyboardType: TextInputType.text,
                    controller: comment,
                    minLines: 1,
                    maxLines: 10000,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      labelText: "Comment",
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                    ) ,
                    validator: (value){
                      if(value!.isNotEmpty){
                        return null;
                      }else{
                        return "Enter your comment";
                      }
                    },
                  ) ,
                ),

                const SizedBox(height:40),

                Container(
                  width:double.infinity ,
                  child: MaterialButton(
                    onPressed: () {
                      final isValidForm = formKey.currentState!.validate();
                      if(isValidForm) {
                        Map<String, dynamic> dataBase = {
                          "field1 ": name.text,
                          "field2 ": money.text,
                          "field3 ": comment.text,
                        };
                        FirebaseFirestore.instance.collection(
                            "Buissness_resources_financial").add(dataBase);
                      }else{
                        return null;

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
                            child: const Text("Send",
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),
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
                          Image.asset("assets/send.png" , height: 30, width: 30,),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection:Axis.vertical ,
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Container(
            child: Column(
              children: [
                const SizedBox(height:20 ,),

                const Text('Place' , style:TextStyle(fontWeight: FontWeight.bold,fontSize:20 )),

                const SizedBox(height: 20),

                Image.asset("assets/home2.png",height: 175,width: 250),

                const SizedBox(height:20),

                Container(
                  width: 350,
                  height: 60,
                  child: TextFormField(
                    controller: name,
                    keyboardType: TextInputType.text,
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
                  ) ,
                ),

                const SizedBox(height: 20),

                Container(
                  width:350 ,
                  height:60 ,
                  child:TextFormField(
                    controller: address,
                    keyboardType: TextInputType.streetAddress,
                    decoration:InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      labelText: "Address",
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                    ) ,
                    validator: (value){
                      if(value!.isNotEmpty){
                        return null;
                      }else{
                        return "Enter your address";
                      }
                    },
                  ) ,
                ),

                const SizedBox(height: 20),

                Container(
                  width:350 ,
                  height:60 ,
                  child:TextFormField(
                    controller: comment,
                    keyboardType: TextInputType.text,
                    minLines: 1,
                    maxLines: 10000,
                    decoration:InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      labelText: "Comment",
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                    ) ,
                    validator: (value){
                      if(value!.isNotEmpty){
                        return null;
                      }else{
                        return "Enter your comment";
                      }
                    },
                  ) ,
                ),

                const SizedBox(height:40 ,),

                Container(
                  width:double.infinity ,
                  child: MaterialButton(
                    onPressed: () {
                      final isValidForm = formKey.currentState!.validate();
                      if(isValidForm) {
                        Map<String, dynamic> dataBase = {
                          "field1 ": name.text,
                          "field2 ": address.text,
                          "field3 ": comment.text,
                        };
                        FirebaseFirestore.instance.collection(
                            "Buissness_resources_place").add(dataBase);
                      }else{
                        return null;

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
                            child: const Text("Send" ,
                              style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 18 ),
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
                          Image.asset("assets/send.png" , height: 30, width: 30,),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formKey,
          child: Container(
            child: Column(
              children: [
                const SizedBox(height:20),

                const Text('Idea' , style:TextStyle(fontWeight: FontWeight.bold,fontSize:20 )),

                const SizedBox(height: 20),
                Image.asset("assets/idea.png",height: 175,width: 250,),
                const SizedBox(height:20),
                Container(
                  width:350 ,
                  height:60 ,
                  child:TextFormField(
                    controller: name,
                    keyboardType: TextInputType.text,
                    decoration:InputDecoration(
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
                    ) ,
                    validator: (value){
                      if(value!.isNotEmpty){
                        return null;
                      }else{
                        return "Enter your name";
                      }
                    },
                  ) ,
                ),

                const SizedBox(height: 20,),

                Container(
                  width:350 ,
                  height:60 ,
                  child: TextFormField(
                    controller: idea,
                    keyboardType: TextInputType.text,
                    decoration:InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      labelText: "Idea",
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                    ) ,
                    validator: (value){
                      if(value!.isNotEmpty){
                        return null;
                      }else{
                        return "Enter your idea";
                      }
                    },
                  ) ,
                ),

                const SizedBox(height: 20),

                Container(
                  width:350 ,
                  height:60 ,
                  child:TextFormField(
                    keyboardType: TextInputType.text,
                    controller: comment,
                    minLines: 1,
                    maxLines: 10000,
                    decoration:InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      labelText: "Comment",
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                    ) ,
                    validator: (value){
                      if(value!.isNotEmpty){
                        return null;
                      }else{
                        return "Enter your comment";
                      }
                    },
                  ) ,
                ),

                const SizedBox(height: 40),

                MaterialButton(
                  onPressed: () {
                    final isValidForm = formKey.currentState!.validate();
                    if(isValidForm) {
                      Map<String, dynamic> dataBase = {
                        "field1 ": name.text,
                        "field2 ": idea.text,
                        "field3 ": comment.text,
                      };
                      FirebaseFirestore.instance.collection(
                          "Buissness_resources_idea").add(dataBase);
                    }else{
                      return null;
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
                          child: const Text("Send",
                            style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,),
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
                        Image.asset("assets/send.png" , height: 30, width: 30,),
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),

      body: screens[currentindex],

      bottomNavigationBar:Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0 , vertical: 10.0),
          child: GNav(
            gap: 8,
            backgroundColor: Colors.black12,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            padding: const EdgeInsets.all(16),
            onTabChange: (index)=>setState ( ()=> currentindex= index),
            tabs: const [
              GButton(
                icon: Icons.euro,
                text: "Money",
              ),
              GButton(
                icon: Icons.home,
                text: "Place",
              ),
              GButton(
                icon: Icons.lightbulb,
                text: "Idea",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
