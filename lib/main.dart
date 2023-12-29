import 'package:flutter/material.dart';
import 'package:playground/bottom_navigation/bottom_home.dart';
import 'package:playground/home_screen.dart';
import 'package:playground/models/Todo.dart';
import 'package:playground/navigation%20/navigation_home.dart';
import 'package:playground/navigation%20/song_screen.dart';

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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // routerConfig: _router,
        home: TodoList(
          todos: todos,
        ));
  }
}
