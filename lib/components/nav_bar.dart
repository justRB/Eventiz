import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      height: 55,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: Colors.grey,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          NavBarElement(description: 'Rechercher', icon: Icons.search),
          NavBarElement(description: 'Carte', icon: Icons.map),
          NavBarElement(description: 'Évènements', icon: Icons.developer_board),
          NavBarElement(description: 'Chat', icon: Icons.chat_bubble_outline),
          NavBarElement(description: 'Profil', icon: Icons.person_outlined),
        ],
      ),
    );
  }
}

class NavBarElement extends StatelessWidget {
  final String description;
  final IconData icon;

  const NavBarElement({
    required this.description,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        width: 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            Text(
              description,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
