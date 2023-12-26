import 'package:flutter_beginner_class/23_12_26/01_ro_router.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const StartScreen(),
    ),
    GoRoute(
      path: '/end',
      builder: (context, state) {
        final person = Person(name: 'ㅋㅋㅋ', age: 30);
        return EndScreen(person: person);
      },
    ),
  ],
);
