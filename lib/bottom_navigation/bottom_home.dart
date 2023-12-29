import 'package:flutter/material.dart';
import 'package:playground/bottom_navigation/first_router.dart';

class BottomHome extends StatelessWidget {
  const BottomHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: DefaultTabController(
          length: 3,
          child: Scaffold(
              appBar: AppBar(
                bottom: const TabBar(tabs: [
                  Tab(icon: Icon(Icons.directions_car)),
                  Tab(icon: Icon(Icons.directions_transit)),
                  Tab(icon: Icon(Icons.directions_bike))
                ]),
                title: const Text("Tabs Demo"),
              ),
              body: const TabBarView(children: [
                FirstRouter(),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike)
              ]))),
    ));
  }
}
