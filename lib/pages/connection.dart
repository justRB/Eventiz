import 'package:app/components/check_boxes.dart';
import 'package:app/components/custom_button.dart';
import 'package:app/components/text_input.dart';
import 'package:app/components/top_bar.dart';
import 'package:app/pages/inscription.dart';
import 'package:app/pages/research.dart';
import 'package:flutter/material.dart';

class Connection extends StatelessWidget {
  const Connection({super.key});

  @override
  Widget build(BuildContext context) {
    void keepConnected(value) {}

    return Scaffold(
      appBar: const TopBar(title: 'Connexion à un compte'),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextInput(
                  placeholder: "Adresse mail",
                  width: MediaQuery.of(context).size.width / 2.5,
                  verticalPadding: 5,
                ),
                TextInput(
                  placeholder: "Mot de passe",
                  width: MediaQuery.of(context).size.width / 2.5,
                  verticalPadding: 5,
                ),
                CheckBoxes(
                  title: 'Rester connecté',
                  width: MediaQuery.of(context).size.width / 2.5,
                  verticalPadding: 5,
                  onChanged: keepConnected,
                ),
                const CustomButton(
                  text: 'connexion',
                  width: 100,
                  height: 0,
                  radius: 8,
                  verticalPadding: 0,
                  page: Research(),
                ),
              ],
            ),
            Positioned(
              bottom: 25,
              child: GestureDetector(
                child: const Text(
                  "s'inscrire",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => const Inscription()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
