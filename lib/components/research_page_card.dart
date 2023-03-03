import 'package:flutter/material.dart';

class ResearchPageCard extends StatelessWidget {
  final String image;
  final String title;
  final String category;
  final Color colorCategory;

  const ResearchPageCard(
      {required this.image,
      required this.title,
      required this.category,
      required this.colorCategory,
      super.key});

  @override
  Widget build(BuildContext context) {
    double cardWidth = 175;
    double cardHeight = 175;
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      width: cardWidth,
      height: cardHeight,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: colorCategory,
            width: 3,
          ),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 181, 204, 223),
            blurRadius: 5,
            offset: Offset(2, 0),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                // topLeft: Radius.circular(0),
                // topRight: Radius.circular(0),
                ),
            child: Image.asset(
              'assets/images/$image',
              width: cardWidth,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontStyle: FontStyle.italic,
            ),
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: colorCategory,
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: const EdgeInsets.only(left: 5, right: 3),
                width: 10,
                height: 10,
              ),
              Text(
                category,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
