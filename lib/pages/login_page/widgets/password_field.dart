import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
    required this.onSaved,
    required this.validator,
  });

  final void Function(String?) onSaved;
  final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400.0,
      child: TextFormField(
        obscureText: true,
        obscuringCharacter: '*',
        decoration: const InputDecoration(
          icon: Icon(Icons.password, size: 16.0),
          labelText: 'Password',
        ),
        keyboardType: TextInputType.text,
        style: const TextStyle(fontSize: 19.0, color: Colors.black87),
        onSaved: onSaved,
        validator: validator,
      ),
    );
  }
}
