import 'package:flutter/material.dart';

class TPS_OverView extends StatelessWidget {
  const TPS_OverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 430,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(18)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Today"s Progress',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'Summary',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  '0 of 5 tasks completed',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: CircleAvatar(
                  child: Text(
                    "20%",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  maxRadius: 50,
                ),
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
