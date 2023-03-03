import 'package:flutter/material.dart';
import '../components/nav_bar.dart';

class Research extends StatefulWidget {
  const Research({super.key});

  @override
  State<Research> createState() => _ResearchState();
}

class _ResearchState extends State<Research> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 200, 230, 255),
      appBar: AppBar(
        leading: const Icon(Icons.search),
        elevation: 0,
        toolbarHeight: 55,
        title: const Text(
          'Explorer les évènements',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Container(
          height: 30,
          width: 250,
          padding: const EdgeInsets.only(
            left: 5,
            right: 5,
          ),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 132, 181, 255),
            borderRadius: BorderRadius.circular(4),
          ),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Rechercher...',
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              border: InputBorder.none,
              icon: Icon(
                Icons.search,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
