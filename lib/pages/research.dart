import 'package:flutter/material.dart';
import '../components/nav_bar.dart';
import '../components/search_bar.dart';
import '../components/top_bar.dart';

class Research extends StatefulWidget {
  const Research({super.key});

  @override
  State<Research> createState() => _ResearchState();
}

class _ResearchState extends State<Research> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const TopBar(title: 'test'),
      body: Center(
        child: Column(
          children: const [
            SearchBar(),
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
