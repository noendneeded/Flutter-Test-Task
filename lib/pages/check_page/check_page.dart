import 'package:flutter/material.dart';
import 'package:flutter_test_edited/pages/check_page/check_provider.dart';
import 'package:provider/provider.dart';

class CheckPage extends StatelessWidget {
  const CheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CheckPageProvider(context: context),
      builder: (context, child) => Scaffold(
        body: Consumer<CheckPageProvider>(
          builder: (context, provider, child) => ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: provider.length(),
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: CheckboxListTile(
                title: Text(provider.address(index)),
                value: provider.isChecked(index),
                onChanged: (value) => provider.change(index),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
