import 'package:flutter/material.dart';
import '../components/nav_bar.dart';
import '../components/research/search_bar.dart';
import '../components/top_bar.dart';
import '../components/research/research_page_card.dart';
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
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 5, left: 15),
                  child: Row(
                    children: const [
                      Text('Évènements les plus réçents'),
                      Icon(Icons.arrow_right_alt),
                    ],
                  ),
                ),
                SizedBox(
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
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
