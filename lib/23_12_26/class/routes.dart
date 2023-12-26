import 'package:flutter_beginner_class/23_12_26/class/bmi_calculator.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: '/result',
      builder: (context, state) {
        final uri = Uri.parse(state.uri.toString());
        final queryParams = uri.queryParameters;

        final double height = double.parse(queryParams['height'] ?? '');
        final double weight = double.parse(queryParams['weight'] ?? '');

        return ResultScreen(height: height, weight: weight);
      },
    ),
  ],
);
