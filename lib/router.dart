import './pages/login_page/login_page.dart';
import './pages/main_page/main_page.dart';
import './pages/list_page/list_page.dart';
import './pages/check_page/check_page.dart';
import './pages/radio_page/radio_page.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final router = GoRouter(
  initialLocation: '/login',
  navigatorKey: rootNavigatorKey,
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    ShellRoute(
      navigatorKey: shellNavigatorKey,
      builder: (context, state, child) => MainPage(child: child),
      routes: [
        GoRoute(
          path: '/list',
          builder: (context, state) => const ListPage(),
        ),
        GoRoute(
          path: '/check',
          builder: (context, state) => const CheckPage(),
        ),
        GoRoute(
          path: '/radio',
          builder: (context, state) => const RadioPage(),
        ),
      ],
    ),
  ],
);
