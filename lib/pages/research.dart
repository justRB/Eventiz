import 'package:flutter/material.dart';
import '../components/nav_bar.dart';
import '../components/search_bar.dart';
import '../components/top_bar.dart';
import '../components/research_page_card.dart';
import '../bdd/bdd.dart';

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
      appBar: const TopBar(title: 'Trouver votre évènement'),
      body: Center(
        child: Column(
          children: [
            const SearchBar(),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              height: 175,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: events.length,
                itemBuilder: (context, index) {
                  final event = events[index];
                  final String image = event['image'].toString();
                  final String title = event['title'].toString();
                  final String category = event['category'].toString();

                  return ResearchPageCard(
                    image: image,
                    title: title,
                    category: category,
                    colorCategory: Colors.blue,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
