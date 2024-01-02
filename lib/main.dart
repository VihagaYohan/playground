import 'package:flutter/material.dart';
import 'package:playground/bottom_navigation/bottom_home.dart';
import 'package:playground/home_screen.dart';
import 'package:playground/layout/layout_main.dart';
import 'package:playground/models/Todo.dart';
import 'package:playground/navigation%20/navigation_home.dart';
import 'package:playground/navigation%20/song_screen.dart';
import 'package:playground/design_theme/thme_home.dart';
import 'package:playground/design_theme/thme_home.dart';

// navigation
import 'package:go_router/go_router.dart';
import 'package:playground/todo/todo_list.dart';

// widgets
import 'package:playground/widgets/painting_and_effects/backdrop_filter.dart';

void main() {
  runApp(const MyApp());
}

// router configuration
final GoRouter _router = GoRouter(routes: <RouteBase>[
  GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const NavigationHome();
      },
      routes: <RouteBase>[
        GoRoute(
            path: 'song',
            builder: (BuildContext context, GoRouterState state) {
              return const SongScreen();
            })
      ])
]);

// todo
final todos = List.generate(
    20,
    (index) => Todo("Todo $index",
        "A description of what needs to be done for todo $index"));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            useMaterial3: true,

            // define default brightness and color
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.purple, brightness: Brightness.dark),

            // defind the default `TextTheme`. Use this to specify the default
            // text styling for headlines, titles, bodies of text and more
            textTheme: const TextTheme(
                displayLarge:
                    TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
                titleLarge:
                    TextStyle(fontSize: 68, fontWeight: FontWeight.w700))),
        // routerConfig: _router,
        home: const ThemeHome());
  }
}
