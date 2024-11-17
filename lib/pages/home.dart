import 'package:flutter/material.dart';
import 'package:u_i1/components/TPS_OverView.dart';
import 'package:u_i1/components/Task_Tile.dart';
import 'package:u_i1/components/drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      drawer: const Drawer_Component(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: const [
            SizedBox(
              height: 5,
            ),
            Text(
              "Hello David!",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "Welcome to your Task Manager",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            TPS_OverView(),
            SizedBox(
              height: 10,
            ),
            Text(
              "Task OverView",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Task_Tile(),
            Task_Tile(),
            Task_Tile(),
            Task_Tile(),
            Task_Tile(),
            Task_Tile(),
            Task_Tile(),
            Task_Tile(),
            Task_Tile(),
            Task_Tile(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                actions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('cancel'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('add'),
                      ),
                    ],
                  )
                ],
                content: TextField(),
                title: Text("Add Note"),
              );
            },
          );
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
