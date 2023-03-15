import 'package:flutter/material.dart';

class ItemsList extends StatefulWidget {
  final List<String> list;
  final double width;
  final double height;

  const ItemsList({
    required this.list,
    required this.width,
    required this.height,
    required this.function,
    super.key,
  });

  final Function(dynamic) function;

  @override
  State<ItemsList> createState() => _ItemsListState();
}

class _ItemsListState extends State<ItemsList> {
  late String itemSelected;
  final double textSize = 14;

  @override
  void initState() {
    super.initState();
    itemSelected = widget.list[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            color: Color.fromARGB(255, 156, 178, 196),
          ),
        ],
      ),
      child: DropdownButton<String>(
        underline: const SizedBox(),
        value: itemSelected,
        onChanged: (String? newValue) {
          setState(() {
            itemSelected = newValue!;
            widget.function(itemSelected);
          });
        },
        items: widget.list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: SizedBox(
              width: widget.width,
              child: Text(
                value,
                style: TextStyle(fontSize: textSize),
              ),
            ),
          );
        }).toList(),
        itemHeight: widget.height,
      ),
    );
  }
}
