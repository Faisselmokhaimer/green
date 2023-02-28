import 'package:flutter/material.dart';

class Product {
  final String title, description;
  final Image image;
  final int price, id;
  final String size;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "office desk",
      price: 300,
      size: "140 x 160",
      description: "Type: sugarcane wood \n Shape: rectangular \n number of shelves: 3 \n item model number: H00567 \n package dimensions: 20kg",
      image: Image.asset("assets/shop/desks/office1.jpg",fit:BoxFit.fill),
      color: const Color(0xFF3D82AE)),

  Product(
      id: 2,
      title: "writing desk",
      price: 280,
      size: "120 x 140",
      description: "2 drawers \n package dimenstion:15kg \n color:natural wood \nLeg Material:Solid Wood",
      image: Image.asset("assets/shop/desks/office desk 2.jpg",fit:BoxFit.fill),
      color: const Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "simple desk",
      price: 410,
      size: "130 x 150",
      description: "2 drawers \n This item is handcrafted from natural rattan \n 90cm long x 38cm deep x 80cm high.",
      image: Image.asset("assets/shop/desks/office desk 3.jpg",fit:BoxFit.fill),
      color: const Color(0xFF989493)),
  Product(
      id: 4,
      title: "brown sugarcane desk",
      price: 350,
      size: "160 x 200",
      description: "3 drawers, 1 Door \n Weight: 120 lb\n Materials: Mango Wood, Cane, Iron \n color:brown",
      image: Image.asset("assets/shop/desks/office desk 4.jpg",fit:BoxFit.fill),
      color: const Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "modern desk",
      price: 400,
      size: "150 x170",
      description: "Type: rectangular \n color:brown \n material:solid wood \n no.drawers:3",
      image: Image.asset("assets/shop/desks/office5.jpg",fit:BoxFit.fill),
      color: const Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "black sugarcane desk",
    price: 500,
    size: "120 x 180",
    description: "Shape:Rectangular \n Top Color:Black,Natural \n Drawers:2 \n Overall Length: 39.4",
    image: Image.asset("assets/shop/desks/desk 6.jpg",fit:BoxFit.fill),
    color: const Color(0xFFAEAEAE),
  ),


  Product(
      id: 7,
      title: "2 sheet Solar Panel ",
      price: 300,
      size: "140 x 160",
      description: " 150 watts \n 15 volts",
      image: Image.asset("assets/shop/panels/panel.jpg",fit:BoxFit.fill),
      color: const Color(0xFF3D82AE)),
  Product(
      id: 8,
      title: " Simple Solar Panel",
      price: 280,
      size: "120 x 140",
      description: "80 watts \n 12 volts",
      image: Image.asset("assets/shop/panels/solar panel 1.jpg",fit:BoxFit.fill),
      color: const Color(0xFFD3A984)),
  Product(
      id: 9,
      title: "Solar Panel3",
      price: 410,
      size: "130 x 150",
      description: "",
      image: Image.asset("assets/shop/panels/solarpanel2.png",fit:BoxFit.fill),
      color: const Color(0xFF989493)),

  Product(
      id: 10,
      title: "mini colored plant vases",
      price: 300,
      size: "140 x 160",
      description: "",
      image: Image.asset("assets/shop/plants/houseplants-t.jpg",fit:BoxFit.fill),
      color: const Color(0xFF3D82AE)),
  Product(
      id: 11,
      title: "modern stand plant ",
      price: 280,
      size: "100 x 90",
      description: "",
      image: Image.asset("assets/shop/plants/plant.jpg",height: 300,width: 350,),
      color: const Color(0xFFD3A984)),
  Product(
      id: 12,
      title: "wooden stand plant ",
      price: 410,
      size: "90 x 120",
      description: "",
      image: Image.asset("assets/shop/plants/plant office1.jpg",height: 300,width: 350,),
      color: const Color(0xFF989493)),
  Product(
      id: 13,
      title: "desk wooden plant ",
      price: 350,
      size: "160 x 200",
      description: "",
      image: Image.asset("assets/shop/plants/plant office2.jpg",height: 150,width: 250,),
      color: const Color(0xFFE6B398)),
  Product(
      id: 14,
      title: "wall brown plant",
      price: 400,
      size: "150 x170",
      description: "",
      image: Image.asset("assets/shop/plants/plant office3.png",height: 300,width: 350,),
      color: const Color(0xFFFB7883)),
  Product(
    id: 15,
    title: "mini plant vases",
    price: 500,
    size: "120 x 180",
    description: "",
    image: Image.asset("assets/shop/plants/plantoffice.jpg"),
    color: const Color(0xFFAEAEAE),
  ),
];