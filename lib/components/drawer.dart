import 'package:flutter/material.dart';

class Drawer_Component extends StatelessWidget {
  const Drawer_Component({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Colors.blueAccent,
      child: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          ListTile(
            leading: Icon(
              Icons.save_as_rounded,
            ),
            title: Text('saved'),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
            ),
            title: Text('Settings'),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading: Icon(
              Icons.info,
            ),
            title: Text('About'),
          ),
        ],
      ),
    );
  }
}
