import 'package:app/components/items_list.dart';
import 'package:app/components/research/check_boxes.dart';
import 'package:flutter/material.dart';
import '../components/nav_bar.dart';
import '../components/research/search_bar.dart';
import '../components/top_bar.dart';
import '../components/research/research_page_card.dart';
import '../bdd/bdd.dart';
import '../components/departments.dart';
import '../components/participants.dart';

class Research extends StatefulWidget {
  const Research({super.key});

  @override
  State<Research> createState() => _ResearchState();
}

class _ResearchState extends State<Research> {
  bool isMostRecently = false;
  bool isMostFiveInvitations = false;
  void mostRecently(bool isChecked) {
    isMostRecently = isChecked;
  }

  void fiveInvitations(bool isChecked) {
    isMostFiveInvitations = isChecked;
  }

  String selectedDepartment = departments[0];

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
            CheckBoxes(title: 'Les plus récents', onChanged: mostRecently),
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
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
