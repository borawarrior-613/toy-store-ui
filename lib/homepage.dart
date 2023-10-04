import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/item_display_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final itemName = [
    "Plush Yellow Birdie",
    "Plush Adorable Puppy",
    "Plush Pink Elephant",
    "Plush White Llama",
    "Plush Pink Rabbit"
  ];

  final imgList = [
    "chick.png",
    "dog.png",
    "elephant.png",
    "llama.png",
    "bunny.png",
  ];

  final priceList = [400.0, 400.0, 500.0, 450.0, 500.0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 41, 180, 185),
      appBar: AppBar(
        title: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Text(
              "Toy Store",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(color: Colors.black),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 41, 180, 185),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => {},
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => {},
          ),
        ],
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Scroll through our specially curated list of",
                  style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87),
                ),
                Text(
                  "beautiful high-quality dolls at affordable prices!",
                  style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: List.generate(
                    5,
                    (index) => ItemDisplayWidget(
                        name: itemName[index],
                        img: imgList[index],
                        price: priceList[index]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
