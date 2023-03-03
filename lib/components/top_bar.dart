import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const TopBar({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
      leading: Image.asset('assets/images/bird.png'),
      leadingWidth: 85,
      elevation: 2,
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
