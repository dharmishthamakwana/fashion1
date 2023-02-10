// ignore: file_names

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomeState();
}

class _HomeState extends State<Homepage> {
  List image = [
    "assets/images/11.png",
    "assets/images/4.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/3.jpg",
    "assets/images/5.jpg",
    "assets/images/10.jpg",
    "assets/images/12.jpg",
    "assets/images/13.jpg",
    "assets/images/2.jpg",
    "assets/images/8.jpg",
    "assets/images/1.jpg",
  ];
  List item = [
    "SHOES",
    "TSHIRT",
    "TOP",
    "BLAZER",
    "HODE",
    "JEANS",
    "COMBO",
    "JACKET",
    "SHRUG",
    "eair ring",
    "WATCH",
    "SHIRT"
  ];
  List price = [
    "30.33",
    "52.00",
    "40.00",
    "99.99",
    "70.00",
    "72.30",
    "56.27",
    "60.50",
    "90.99",
    "45.90",
    "99.99",
    "25.33"
  ];
  List rate = [
    "5.0",
    "4.1",
    "4.9",
    "4.2",
    "4.7",
    "4.5",
    "4.8",
    "4.8",
    "4.2",
    "4.1",
    "4.3",
    "4.0",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text("SHOPPING GALLERY UI"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey.shade300,
              // gradient: LinearGradient(colors: [
              //   Colors.grey.shade300,
              //   Colors.white
              // ],transform: GradientRotation(pi/2))
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: GridView.builder(
              itemCount: image.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Box(image[index], item[index], price[index], rate[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
  // ignore: non_constant_identifier_names
  Widget Box(String image, String item, String price, String rate) {
    return Stack(
      children: [
        Container(
          height: 500,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          alignment: Alignment.center,
          child: Image.asset(
            image,
            height: 155,
            width: 155,
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            height: 28,
            width: 62,
            decoration: const BoxDecoration(

            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$rate ",
                  style: const TextStyle(color: Colors.white),
                ),
                const Icon(
                  Icons.star,
                  size: 15,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
            alignment: Alignment.center,
            height: 40,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item,
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    "\$ $price",
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}