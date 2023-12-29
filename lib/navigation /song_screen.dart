import 'package:flutter/material.dart';
import 'package:playground/main.dart';

// navigation
import 'package:go_router/go_router.dart';

// pages
import 'package:playground/navigation%20/navigation_home.dart';

class SongScreen extends StatelessWidget {
  const SongScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: () {
            context.go('/');
          },
          child: const Text("Click Here - Song screen")),
    ));
  }
}
