import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  final String placeholder;
  final double width;
  final double verticalPadding;
  const TextInput({
    required this.placeholder,
    required this.width,
    required this.verticalPadding,
    super.key,
  });

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  TextEditingController text = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: widget.verticalPadding),
      width: widget.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 181, 204, 223),
            blurRadius: 4,
          ),
        ],
      ),
      child: TextFormField(
        controller: text,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 10, right: 10),
          hintText: widget.placeholder,
          hintStyle: TextStyle(
            color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.25),
            fontStyle: FontStyle.italic,
          ),
          labelStyle: const TextStyle(
            color: Color.fromARGB(255, 132, 181, 255),
          ),
          alignLabelWithHint: true,
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 41, 126, 255)),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 132, 181, 255),
            ),
          ),
        ),
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}
