import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25),
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
    );
  }
}
