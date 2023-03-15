import 'package:app/components/check_boxes.dart';
import 'package:app/components/nav_bar.dart';
import 'package:app/components/text_input.dart';
import 'package:app/components/top_bar.dart';
import 'package:flutter/material.dart';

class Connection extends StatelessWidget {
  const Connection({super.key});

  @override
  Widget build(BuildContext context) {
    void keepConnected(value) {}

    return Scaffold(
      appBar: const TopBar(title: 'Connexion à votre compte'),
      body: Center(
        child: Container(
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextInput(
                placeholder: "Nom d'utilisateur",
                width: 150,
              ),
              const TextInput(
                placeholder: "Mot de passe",
                width: 150,
              ),
              CheckBoxes(
                title: 'Rester connecté',
                onChanged: keepConnected,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
