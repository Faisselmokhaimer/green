import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class prepare extends StatefulWidget {


  @override
  State<prepare> createState() => _prepareState();
}

class _prepareState extends State<prepare> {
  int currentindex=0;

  final screens = [
    Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.start,
          crossAxisAlignment:CrossAxisAlignment.center,



          children: [
            Text("Solar Panels",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
            ),
            Image.asset("assets/solar panel icon.jpg",height: 150,
              width: 250,
            ),

            const SizedBox(height: 20),

            const Text("First:\n",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.indigo,
            ),
            ),

            const Text("Solar panels are soucre of electricity that derives its energy from the sun"
                " which is a clean source of energy that doesn't pollute the enviroment.\n"
              ,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.indigo,
              ),
            ),

            const Text("Second:\n",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.indigo,
            ),
            ),

            const Text("Benefits : \n 1.That solar panels use less energy than any other electric source."
                "\n2.It has performance and product warranty that guarantees you between 25 to 40 years of warranty.\n"
                "3.It is considered light to be put on your roof.\n"
              ,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.indigo,
              ),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,



          children: [
            const Text("Green Decorations",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.indigo,
            ),
            ),
            SizedBox(height: 5,),
            Image.asset("assets/eco_paints.png",height: 150,width: 250),
            SizedBox(height: 10,),
            const Text("First:",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.indigo,
            ),
            ),
            SizedBox(height: 10,),

            const Text("Eco-friendly paints :\n are innovative products that are specially designed to have few if not zero levels of VOCs,So it doesn't pollute the enviroment ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.indigo,
            ),
            ),
            SizedBox(height: 10,),

            const Text("Second:",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.indigo,
            ),
            ),
            SizedBox(height: 10,),

            const Text("Benfits:\n"
                "1.Being better for people and the environment.\n"
                "2.Improved sustainability.\n"
                "3.Cost-effectiveness.\n"
                "4.Water-based paint.\n"
                "5.Plant-based paints.\n"
                "6.Low VOC paints.\n"
                "7.Zero VOC paints.\n",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.indigo,
            ),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Green Materials\n",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.indigo,
              ),
              ),
              SizedBox(height: 10,),

              Image.asset("assets/Green_house.png" , height: 150 , width: 250),

              const Text("First:\n",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.indigo,
              ),
              ),
              SizedBox(height: 10),

              const Text("Green materials are materials which are used in building green houses.\n"
                  "Those materials are :"
                  "1.plastic\n"
                  "2.GLass\n"
                  "3.Polycarbonate\n"
                  "4.Poly(methyl methacrylate)\n"
                  "5.PVC (Polyvinyl chloride)\n"
                  "6.wood\n"
                  "7.aluminium\n"
                  "8.iron\n"
                  "Note : Not all materials are used in making one house just a few \n",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.indigo,
              ),
              ),
              SizedBox(height: 10,),

              const Text("Second:\n",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.indigo,
              ),
              ),
              SizedBox(height: 10,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Benefits:\n"
                      "1.Water and energy efficiency.\n"
                      "2.Less maintenance.\n"
                      "3.Healthy indoor environment.\n"
                      "4.Lower carbon footprint.\n"
                      "5.Higher property value.\n",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.indigo,
                  ),
                  ),
                ],
              ),
            ],
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

      body:screens[currentindex],

      bottomNavigationBar:Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0 , vertical: 10.0),
          child: GNav(
            gap: 8,
            backgroundColor: Colors.black12,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            tabBackgroundGradient: const LinearGradient(colors: [Colors.redAccent , Colors.blueAccent]),
            padding: const EdgeInsets.all(16),
            onTabChange: (index)=>setState ( ()=> currentindex= index),
            tabs: const [
              GButton(
                icon: Icons.sunny,
                text: "Solar panels",
              ),
              GButton(
                icon: Icons.home,
                text: "Eco decorations",
              ),
              GButton(
                icon: Icons.iron,
                text: "Green materials",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
