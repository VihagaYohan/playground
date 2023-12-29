import 'package:flutter/material.dart';
import 'package:playground/bottom_navigation/second_router.dart';

class FirstRouter extends StatelessWidget {
  const FirstRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(title: const Text("First route")),
        body: Center(
          child: ElevatedButton(
            child: const Text("open route"),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondRouter()));
            },
          ),
        )));
  }
}
