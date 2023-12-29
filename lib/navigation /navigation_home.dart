import 'package:flutter/material.dart';
import 'package:playground/navigation%20/song_screen.dart';

class NavigationHome extends StatelessWidget {
  const NavigationHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SongScreen()));
                },
                child: const Text("Navigation Home"))));
  }
}
