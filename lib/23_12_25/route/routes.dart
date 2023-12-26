import 'package:flutter_beginner_class/23_12_25/create_screen.dart';
import 'package:flutter_beginner_class/23_12_25/list_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ListScreen(),
    ),
    GoRoute(
      path: '/create',
      builder: (context, state) => const CreateScreen(),
    ),
  ],
);
