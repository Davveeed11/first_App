import 'package:flutter/material.dart';
import 'package:u_i1/components/buttons.dart';
import 'package:u_i1/pages/home.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              const Text(
                "Fancy beautiful app",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 33,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Designs',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  child: Column(
                    children: [
                      Buttons(
                        ontap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Home();
                              },
                            ),
                          );
                        },
                        colors: Colors.transparent,
                        title: "login",
                      ),
                      Buttons(
                        ontap: () {},
                        colors: Colors.blue,
                        title: "Get Started",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
