import 'package:app/components/items_list.dart';
import 'package:flutter/material.dart';
import '../components/nav_bar.dart';
import '../components/research/search_bar.dart';
import '../components/top_bar.dart';
import '../components/research/research_page_card.dart';
import '../bdd/bdd.dart';
import '../components/departments.dart';
import '../components/participants.dart';
import '../components/categories.dart';

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
                  height: MediaQuery.of(context).size.width / 2.5,
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
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.width / 2.5,
                        colorCategory: Colors.blue,
                      );
                    },
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 25, bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ItemsList(
                    list: participants,
                    width: 35,
                    height: 200,
                  ),
                  ItemsList(
                    list: departments,
                    width: 100,
                    height: 200,
                  ),
                  ItemsList(
                    list: categories,
                    width: 50,
                    height: 200,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
