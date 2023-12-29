import 'package:flutter/material.dart';
import 'package:playground/bottom_navigation/first_router.dart';

class SecondRouter extends StatelessWidget {
  const SecondRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(title: const Text("First route")),
        body: Center(
          child: ElevatedButton(
            child: const Text("open route"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FirstRouter()));
            },
          ),
        )));
  }
}
