import 'package:app/pages/connection.dart';
import 'package:flutter/material.dart';
import '../components/nav_bar.dart';
import '../components/top_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(title: 'Profil'),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 64,
                //backgroundImage: AssetImage('assets/avatar.png'), // Remplacez par le chemin de votre image d'avatar
              ),
              SizedBox(height: 16),
              Text(
                'John Doe',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'john.doe@example.com',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          // Partie Informations
          Card(
            child: ListTile(
              title: const Text('Informations'),
              subtitle: const Text('Modifier vos informations personnelles'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // Naviguer vers la page de modification des informations
              },
            ),
          ),
          // Partie Sécurité et confidentialité
          Card(
            child: ListTile(
              title: const Text('Sécurité et confidentialité'),
              subtitle: const Text('Gérer vos paramètres de sécurité'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // Naviguer vers la page de gestion de sécurité et confidentialité
              },
            ),
          ),
          // Partie Paramètres
          Card(
            child: ListTile(
              title: const Text('Paramètres'),
              subtitle: const Text('Configurer vos préférences'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // Naviguer vers la page des paramètres
              },
            ),
          ),
          // Bouton Suppression de compte
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 96, 160, 255),
            ),
            child: const Text('Supprimer le compte'),
            onPressed: () {
              // Afficher une boîte de dialogue de confirmation
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Confirmation'),
                    content: const Text(
                        'Voulez-vous vraiment supprimer votre compte ?'),
                    actions: [
                      TextButton(
                        child: const Text('Annuler'),
                        onPressed: () {
                          Navigator.of(context)
                              .pop(); // Fermer la boîte de dialogue
                        },
                      ),
                      TextButton(
                        child: const Text('Supprimer'),
                        onPressed: () {
                          // Effectuer l'action de suppression du compte
                          // ...
                          Navigator.of(context)
                              .pop(); // Fermer la boîte de dialogue
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (_, __, ___) => const Connection()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 96, 160, 255),
            ),
            child: const Text('Déconnexion'),
          ),
        ],
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
