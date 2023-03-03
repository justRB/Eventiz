import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 238, 0),
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          NavBarElement(description: 'rechercher', icon: Icons.search),
          NavBarElement(description: 'carte', icon: Icons.map),
          NavBarElement(description: 'évènements', icon: Icons.developer_board),
          NavBarElement(description: 'chat', icon: Icons.chat_bubble_outline),
          NavBarElement(description: 'profil', icon: Icons.person_outlined),
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
        width: 75,
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
