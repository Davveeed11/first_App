import 'package:flutter/material.dart';

class Task_Tile extends StatelessWidget {
  const Task_Tile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        height: 70,
        width: 450,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        child: const ListTile(
          leading: Icon(
            Icons.check_box_outline_blank_outlined,
            size: 35,
          ),
          title: Text(
            "WORK ON A SHARING FEATURE ON PROJECT 5",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
