import 'package:app/pages/create_event.dart';
import 'package:app/pages/profil.dart';
import 'package:app/pages/research.dart';
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
          NavBarElement(
            description: 'Rechercher',
            icon: Icons.search,
            page: Research(),
          ),
          NavBarElement(
            description: 'Carte',
            icon: Icons.map,
            page: Placeholder(),
          ),
          NavBarElement(
            description: 'Évènements',
            icon: Icons.developer_board,
            page: CreateEvent(),
          ),
          NavBarElement(
            description: 'Chat',
            icon: Icons.chat_bubble_outline,
            page: Placeholder(),
          ),
          NavBarElement(
            description: 'Profil',
            icon: Icons.person_outlined,
            page: ProfilePage(),
          ),
        ],
      ),
    );
  }
}

class NavBarElement extends StatelessWidget {
  final String description;
  final IconData icon;
  final Widget page;

  const NavBarElement({
    required this.description,
    required this.icon,
    required this.page,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        width: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            Text(
              description,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context)
            .push(PageRouteBuilder(pageBuilder: (_, __, ___) => page));
      },
    );
  }
}
