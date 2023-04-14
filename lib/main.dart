import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sogami_flutter/ui/app_scaffold.dart';
import 'package:sogami_flutter/ui/screens/home.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  runApp(const SogamiApp());
}

/// The route configuration.
final GoRouter _router = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  routes: <RouteBase>[
    ShellRoute(
      navigatorKey: _navigatorKey,
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return AppScaffold(
          child: child,
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const MyHomePage(title: 'Home');
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'details',
              builder: (BuildContext context, GoRouterState state) {
                return const MyHomePage(title: '2');
              },
            ),
            GoRoute(
              path: 'a',
              builder: (BuildContext context, GoRouterState state) {
                return const MyHomePage(title: '3');
              },
            ),
          ],
        ),
      ],
    ),
  ],
);

class SogamiApp extends StatelessWidget {
  const SogamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Sogami',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primaryColor: Colors.black,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white60,
            unselectedItemColor: Colors.white30,
          ),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
              .copyWith(background: Colors.black)),
      routerConfig: _router,
    );
  }
}
