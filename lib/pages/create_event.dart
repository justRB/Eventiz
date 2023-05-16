import 'package:app/components/categories.dart';
import 'package:app/components/custom_button.dart';
import 'package:app/components/items_list.dart';
import 'package:app/components/nav_bar.dart';
import 'package:app/components/text_input.dart';
import 'package:app/components/top_bar.dart';
import 'package:flutter/material.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  void categorie(value) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(title: "Créez un évènement"),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextInput(
                    placeholder: "Nom de l'évènement",
                    width: MediaQuery.of(context).size.width / 2,
                    verticalPadding: 15,
                  ),
                  ItemsList(
                    list: categoriesSelect,
                    width: 50,
                    height: 50,
                    function: categorie,
                  ),
                ],
              ),
              GestureDetector(
                child: Container(
                  width: (MediaQuery.of(context).size.width / 2) + 85,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: const Color.fromARGB(255, 132, 181, 255),
                      width: 2,
                    ),
                  ),
                  child: const Icon(
                    Icons.image,
                    color: Color.fromARGB(255, 132, 181, 255),
                    size: 75,
                  ),
                ),
                onTap: () {},
              ),
              SizedBox(
                height: 250,
                child: TextInput(
                  placeholder: 'Description',
                  width: MediaQuery.of(context).size.width / 2 + 85,
                  verticalPadding: 15,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2 + 85,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 96, 160, 255),
                        fixedSize: const Size(50, 25),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: const Icon(
                        Icons.arrow_left,
                        size: 25,
                      ),
                      onPressed: () {},
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 96, 160, 255),
                        fixedSize: const Size(50, 25),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: const Icon(
                        Icons.arrow_right,
                        size: 25,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
