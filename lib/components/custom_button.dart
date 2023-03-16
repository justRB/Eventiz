import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final double radius;
  final Widget page;
  const CustomButton({
    required this.text,
    required this.width,
    required this.height,
    required this.radius,
    required this.page,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: Text(text),
      onPressed: () {
        Navigator.of(context)
            .push(PageRouteBuilder(pageBuilder: (_, __, ___) => page));
      },
    );
  }
}
