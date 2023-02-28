import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green_business/Store/StoreHome/store_home.dart';
import 'package:green_business/ads.dart';
import 'package:green_business/business_resources.dart';
import 'package:green_business/employing_a_worker.dart';
import 'package:green_business/find_a_job.dart';
import 'package:green_business/prepare_a_workplace.dart';
import 'package:green_business/profile.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          actions: [

          ],
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: Column(
                children: [Buildheader(context), Buildmenuitems(context)],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 10, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "The Services",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => apply()));
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 24.0),
                              height: 250,
                              width: 340,
                              decoration: const BoxDecoration(
                                color: Color(0xff97f37a),
                                borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Business Resources",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineLarge!
                                                .copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 8.0),
                                            child: Text(
                                              "What do you have to start in the app? \n If you have money , place or idea \n You should Enter here and fill the following forms \n And let's check your infromations",
                                              style: TextStyle(color: Colors.white70),
                                            ),
                                          ),
                                          const Spacer(),
                                          Row(
                                            children: [
                                              ...List.generate(
                                                3,
                                                    (index) => Transform.translate(
                                                  offset: Offset(
                                                      (-10 * index).toDouble(), 0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Image.asset("assets/business.png",
                                      height: 50, width: 50)
                                ],
                              ),
                            ),
                          ),

                          const SizedBox(width: 20),

                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Find_a_job()));
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 24.0),
                              height: 250,
                              width: 340,
                              decoration: const BoxDecoration(
                                color: Color(0xffef4444),
                                borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Find a job For you",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineLarge!
                                                .copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 8.0),
                                            child: Text(
                                              "Do you want a job? \n Come here and fill the following forms and we will read it \n you can get a job in a short time \n Let's fill the following forms",
                                              style: TextStyle(color: Colors.white70),
                                            ),
                                          ),
                                          const Spacer(),
                                          Row(
                                            children: [
                                              ...List.generate(
                                                3,
                                                    (index) => Transform.translate(
                                                  offset: Offset(
                                                      (-10 * index).toDouble(), 0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Image.asset("assets/job.png",
                                      height: 50, width: 50)
                                ],
                              ),
                            ),
                          ),

                          const SizedBox(width: 20),

                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Employing_a_worker()));
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 24.0),
                              height: 250,
                              width: 340,
                              decoration: const BoxDecoration(
                                color: Color(0xff8fb9f3),
                                borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Employing \n a worker",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineLarge!
                                                .copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 8.0),
                                            child: Text(
                                              "Do you need help? \n I think you need help \n So you can get a worker form here \n But you should fill the forms to get the worker in green business",
                                              style: TextStyle(color: Colors.white70),
                                            ),
                                          ),
                                          const Spacer(),
                                          Row(
                                            children: [
                                              ...List.generate(
                                                3,
                                                    (index) => Transform.translate(
                                                  offset: Offset(
                                                      (-10 * index).toDouble(), 0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Image.asset("assets/worker.png",
                                      height: 50, width: 50)
                                ],
                              ),
                            ),
                          ),

                          const SizedBox(width: 20),

                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => prepare()));
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 24.0),
                              height: 250,
                              width: 340,
                              decoration: const BoxDecoration(
                                color: Color(0xfff89a33),
                                borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Prepare a workplace",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineLarge!
                                                .copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 8.0),
                                            child: Text(
                                              "I think you need a place to start your project But \n It should don't be harmful on the environment \n Here some tips for that",
                                              style: TextStyle(color: Colors.white70),
                                            ),
                                          ),
                                          const Spacer(),
                                          Row(
                                            children: [
                                              ...List.generate(
                                                3,
                                                    (index) => Transform.translate(
                                                  offset: Offset(
                                                      (-10 * index).toDouble(), 0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Image.asset("assets/workplace.png",
                                      height: 50, width: 50)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    Padding(
                      padding: const EdgeInsets.only(top: 10 , left: 5 , bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Browse",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),

                    GestureDetector(
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreenStore()));},
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 80.0,
                                    padding: const EdgeInsets.all(12.0),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Image.asset("assets/store.png"),
                                  ),

                                  const SizedBox(width: 20.0),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text("The Store" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20.0)),
                                      const SizedBox(height: 8.0),
                                      Text("Beautiful Decorations" , style: TextStyle(fontSize: 16.0 , color: Colors.grey[600])),
                                    ],
                                  ),

                                  const SizedBox(width: 10),

                                  const Icon(Icons.arrow_forward_ios),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()));},
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 80.0,
                                    padding: const EdgeInsets.all(12.0),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Image.asset("assets/profile.png"),
                                  ),

                                  const SizedBox(width: 20.0),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text("Your Profile" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20.0)),
                                      const SizedBox(height: 8.0),
                                      Text("Check out your profile" , style: TextStyle(fontSize: 16.0 , color: Colors.grey[600])),
                                    ],
                                  ),

                                  const SizedBox(width: 10),

                                  const Icon(Icons.arrow_forward_ios),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Order()));},
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 80.0,
                                    padding: const EdgeInsets.all(12.0),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Image.asset("assets/marketing.png"),
                                  ),

                                  const SizedBox(width: 20.0),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text("Digital Marketing" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20.0)),
                                      const SizedBox(height: 8.0),
                                      Text("Make ads & advertising" , style: TextStyle(fontSize: 16.0 , color: Colors.grey[600])),
                                    ],
                                  ),

                                  const SizedBox(width: 10),

                                  const Icon(Icons.arrow_forward_ios),
                                ],
                              ),
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
      ),
    );
  }

  Widget Buildmenuitems(BuildContext context) => Column(
    children: [
      ListTile(
        leading: Icon(Icons.person_outline_rounded),
        title: Text("Profile"),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Profile()));
        },
      ),
      ListTile(
        leading: Icon(Icons.question_mark_rounded),
        title: Text("Support"),
        onTap: () {
          launchUrlString(
              "mailto:techno.mobilecom32023@gmail.com?subject= Support");
        },
      ),
      ListTile(
        leading: Icon(Icons.contact_support_outlined),
        title: Text("Send feedback"),
        onTap: () {
          launchUrlString(
              "mailto:techno.mobilecom32023@gmail.com?subject=Send feedback");
        },
      ),
      ListTile(
        leading: Icon(Icons.exit_to_app_rounded),
        title: Text("SignOut"),
        onTap: () async {
          await FirebaseAuth.instance.signOut();
          Navigator.of(context).pushNamed("login");
        },
      ),
    ],
  );

  Widget Buildheader(BuildContext context) => Container(
    color: Colors.grey[500],
    width: double.infinity,
    padding: const EdgeInsets.only(top: 20.0),
    height: 200,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Rapid Tech",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Text(
          "${FirebaseAuth.instance.currentUser!.email}",
          style: TextStyle(
            color: Colors.grey[300],
            fontSize: 14,
          ),
        ),
      ],
    ),
  );
}
