import 'package:app/components/check_boxes.dart';
import 'package:app/components/custom_button.dart';
import 'package:app/components/nav_bar.dart';
import 'package:app/components/text_input.dart';
import 'package:app/components/top_bar.dart';
import 'package:app/pages/research.dart';
import 'package:flutter/material.dart';

class Connection extends StatelessWidget {
  const Connection({super.key});

  @override
  Widget build(BuildContext context) {
    void keepConnected(value) {}

    return Scaffold(
      appBar: const TopBar(title: 'Connexion à votre compte'),
      body: Center(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextInput(
                placeholder: "Nom d'utilisateur",
                width: 150,
                verticalPadding: 5,
              ),
              const TextInput(
                placeholder: "Mot de passe",
                width: 150,
                verticalPadding: 5,
              ),
              CheckBoxes(
                title: 'Rester connecté',
                width: 150,
                verticalPadding: 5,
                onChanged: keepConnected,
              ),
              const CustomButton(
                text: 'connexion',
                width: 100,
                height: 50,
                radius: 60,
                page: Research(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
