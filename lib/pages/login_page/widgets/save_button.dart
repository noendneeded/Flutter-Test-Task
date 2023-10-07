import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key, required this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(context) {
    return MaterialButton(
      minWidth: 150.0,
      height: 50.0,
      color: Colors.indigo,
      onPressed: onPressed,
      child: const Text(
        'Log In',
        style: TextStyle(fontSize: 19.0, color: Colors.white),
      ),
    );
  }
}
