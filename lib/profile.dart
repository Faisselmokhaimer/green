import 'dart:io';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green_business/home_page_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? Image;
  var picker = ImagePicker();
  Future<void> pickuploadimage()async {
    final image = await picker.pickImage(source: ImageSource.gallery);
    if(image != null){
      setState(() {
        Image = File(image.path);
      });
    }else{
      AwesomeDialog(
          context: context,title: "Error",body: Text("No image selected",style: TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),))..show();
    }
    Reference ref = FirebaseStorage.instance.ref().child("profile").child("/" + image!.name);
    await ref.putFile(File(image.path));
    ref.getDownloadURL();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
            }, child: Text("Update",style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),
            ),
            ),



          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ignore: avoid_unnecessary_containers
              Stack(
                alignment: Alignment.bottomRight,
                children:[
                  Container(
                    child: CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.white,
                        backgroundImage:Image == null ? AssetImage("assets/profileGB.png") : FileImage(Image!) as ImageProvider <Object> ?
                    ),
                  ),
                  //wrap with circle avatar with radius 20 with background white
                  IconButton(onPressed: (){
                    pickuploadimage();
                  }, icon: Icon(Icons.camera_alt))
                ],
              ),
              SizedBox(

                  height: 30
              ),
              Text("${FirebaseAuth.instance.currentUser!.email}",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}