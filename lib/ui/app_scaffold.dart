import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppScaffold extends StatefulWidget {
  final Widget child;

  const AppScaffold({Key? key, required this.child}) : super(key: key);

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  int currentInt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: currentInt,
        onTap: (int index) {
          setState(() {
            switch (index) {
              case 0:
                context.go('/');
                currentInt = 0;
                break;
              case 1:
                context.go('/details');
                currentInt = 1;
                break;
              case 2:
                context.go('/a');
                currentInt = 2;
                break;
            }
          });
        },
      ), //
      body: widget.child,
    );
  }
}
