import 'package:flutter/material.dart';

class ResearchPageCard extends StatelessWidget {
  final String image;
  final String title;
  final String category;
  final double width;
  final double height;
  final Color colorCategory;

  const ResearchPageCard(
      {required this.image,
      required this.title,
      required this.category,
      required this.width,
      required this.height,
      required this.colorCategory,
      super.key});

  @override
  Widget build(BuildContext context) {
    double radius = 8;
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 181, 204, 223),
            blurRadius: 8,
            offset: Offset(4, 0),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(radius),
              topRight: Radius.circular(radius),
            ),
            child: Image.asset(
              'assets/images/$image',
              width: width,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 5, right: 5),
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: const TextStyle(
                fontSize: 12,
                fontStyle: FontStyle.italic,
              ),
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
          Container(
            decoration: BoxDecoration(
              color: colorCategory,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(radius),
                bottomRight: Radius.circular(radius),
              ),
            ),
            height: 4,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
