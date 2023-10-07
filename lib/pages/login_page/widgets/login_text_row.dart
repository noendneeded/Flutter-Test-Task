import 'package:flutter/material.dart';

class LogInTextRow extends StatelessWidget {
  const LogInTextRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Hello! Please ',
          style: TextStyle(fontSize: 22.0, color: Colors.black87),
        ),
        Text(
          'LogIn ',
          style: TextStyle(fontSize: 22.0, color: Colors.indigo),
        ),
        Text(
          'to continue',
          style: TextStyle(fontSize: 22.0, color: Colors.black87),
        ),
      ],
    );
  }
}
