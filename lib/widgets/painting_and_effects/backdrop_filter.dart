import 'package:flutter/material.dart';

class UIBackdropFilter extends StatelessWidget {
  const UIBackdropFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Text('0' * 10000),
        const Center(
          child: Text("hello world"),
        ),
      ],
    );
  }
}
