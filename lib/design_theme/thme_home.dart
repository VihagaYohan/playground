import 'package:flutter/material.dart';

class ThemeHome extends StatelessWidget {
  const ThemeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        color: Theme.of(context).colorScheme.primary,
        child: Column(
          children: [
            Text("Text with background color",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Theme.of(context).colorScheme.onPrimary)),

            // over-ride theme with creating unique ThemeData instance
            Theme(
              data: ThemeData(
                  colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)),
              child: FloatingActionButton(
                  onPressed: () {}, child: const Icon(Icons.add)),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.abc),
            ),

            // over-ride theme with extending parent theme
            Theme(
                data: Theme.of(context).copyWith(
                    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ))
          ],
        ));
  }
}
