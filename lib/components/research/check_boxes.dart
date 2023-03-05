import 'package:flutter/material.dart';

class CheckBoxes extends StatefulWidget {
  final String title;
  final Function(bool) onChanged;

  const CheckBoxes({
    required this.title,
    required this.onChanged,
    super.key,
  });

  @override
  State<CheckBoxes> createState() => _CheckBoxesState();
}

class _CheckBoxesState extends State<CheckBoxes> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Row(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value ?? false;
              });
              widget.onChanged(isChecked);
            },
          ),
          Text(widget.title),
        ],
      ),
    );
  }
}
