import 'package:flutter/material.dart';

class CheckBoxes extends StatefulWidget {
  final String title;
  final double width;
  final double verticalPadding;
  final Function(bool) onChanged;

  const CheckBoxes({
    required this.title,
    required this.width,
    required this.verticalPadding,
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
      width: widget.width,
      margin: EdgeInsets.symmetric(vertical: widget.verticalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            activeColor: const Color.fromARGB(255, 132, 181, 255),
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
