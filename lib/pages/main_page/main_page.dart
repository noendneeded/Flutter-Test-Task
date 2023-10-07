import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatelessWidget {
  final Widget child;
  static int currentIndex = 0;
  final pages = ['/list', '/check', '/radio'];

  MainPage({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list_outlined),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box_outlined),
            label: 'Check',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.radio_button_checked_outlined),
            label: 'Radio',
          ),
        ],
        currentIndex: currentIndex,
        selectedItemColor: Colors.indigo,
        onTap: (int index) {
          currentIndex = index;
          GoRouter.of(context).go(pages[index]);
        },
      ),
    );
  }
}
