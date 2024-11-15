import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rentit/stack/auth_screens/auth_intro.dart';
import 'package:rentit/stack/main_screens/intro.dart';
import 'package:rentit/stack/main_screens/rent_it.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Routing();
  }
}

final bool loggedin = true;
final GoRouter _router = GoRouter(
    redirect: (context, state) {
      // Redirect to login page if not logged in
      if (!loggedin) {
        return "/login";
      }
      return null; // No redirection
    },
    routes: [
      GoRoute(
          path: "/",
          builder: (_, state) {
            return RentIt();
          }),
      GoRoute(
          path: "/login",
          builder: (_, state) {
            return AuthIntro();
          }),
    ]);

class Routing extends StatelessWidget {
  const Routing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(),
      routerConfig: _router,
    );
  }
}
