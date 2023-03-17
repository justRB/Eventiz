import 'package:app/components/text_input.dart';
import 'package:app/components/top_bar.dart';
import 'package:app/pages/research.dart';
import 'package:flutter/material.dart';

import '../components/custom_button.dart';

class Inscription extends StatelessWidget {
  const Inscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(title: "Création d'un compte"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextInput(
                  placeholder: 'Nom',
                  width: MediaQuery.of(context).size.width / 3,
                  verticalPadding: 5,
                ),
                TextInput(
                  placeholder: 'Prénom',
                  width: MediaQuery.of(context).size.width / 3,
                  verticalPadding: 5,
                ),
              ],
            ),
            TextInput(
              placeholder: 'Adresse mail',
              width: MediaQuery.of(context).size.width / 1.5,
              verticalPadding: 5,
            ),
            TextInput(
              placeholder: 'Téléphone',
              width: MediaQuery.of(context).size.width / 1.5,
              verticalPadding: 5,
            ),
            TextInput(
              placeholder: 'Mot de passe',
              width: MediaQuery.of(context).size.width / 1.5,
              verticalPadding: 5,
            ),
            TextInput(
              placeholder: 'Confirmation mot de passe',
              width: MediaQuery.of(context).size.width / 1.5,
              verticalPadding: 5,
            ),
            const CustomButton(
              text: 'inscription',
              width: 100,
              height: 0,
              radius: 8,
              verticalPadding: 0,
              page: Research(),
            ),
          ],
        ),
      ),
    );
  }
}
