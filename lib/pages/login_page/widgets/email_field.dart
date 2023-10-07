import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
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
        decoration: const InputDecoration(
          icon: Icon(Icons.email_outlined, size: 16.0),
          labelText: 'Email',
        ),
        keyboardType: TextInputType.emailAddress,
        style: const TextStyle(fontSize: 19.0, color: Colors.black87),
        onSaved: onSaved,
        validator: validator,
      ),
    );
  }
}
