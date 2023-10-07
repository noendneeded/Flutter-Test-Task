import 'package:flutter/material.dart';
import 'package:flutter_test_edited/pages/login_page/login_provider.dart';
import 'package:provider/provider.dart';
import './widgets/login_text_row.dart';
import './widgets/email_field.dart';
import './widgets/password_field.dart';
import './widgets/save_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginPageProvider(context: context),
      builder: (context, child) => Scaffold(
        body: Consumer<LoginPageProvider>(
          builder: (context, provider, child) => Form(
            key: provider.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///
                const LogInTextRow(),

                EmailTextField(
                  onSaved: provider.saveEmail,
                  validator: provider.validateEmail,
                ),

                const SizedBox(height: 15.0),

                PasswordTextField(
                  onSaved: provider.savePassword,
                  validator: provider.validatePassword,
                ),

                const SizedBox(height: 15.0),

                SaveButton(onPressed: provider.check),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
