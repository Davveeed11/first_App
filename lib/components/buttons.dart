import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Color colors;
  final String title;
  final VoidCallback ontap;
  const Buttons({
    super.key,
    required this.colors,
    required this.title,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: 450,
          height: 55,
          decoration: BoxDecoration(
            color: colors,
            border: Border.all(
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
