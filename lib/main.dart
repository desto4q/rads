import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rentit/routes/routes.dart';

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
    routes: routes);

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
