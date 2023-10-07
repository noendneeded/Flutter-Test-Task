import 'package:flutter/material.dart';
import 'package:flutter_test_edited/pages/radio_page/radio_provider.dart';
import 'package:provider/provider.dart';

class RadioPage extends StatelessWidget {
  const RadioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RadioPageProvider(context: context),
      builder: (context, child) => Scaffold(
        body: Consumer<RadioPageProvider>(
          builder: (context, provider, child) => ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: provider.length(),
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: RadioListTile(
                title: Text(provider.color(index)),
                value: provider.model[index],
                groupValue: provider.getChoosen(),
                onChanged: (value) => provider.setChoosen(value),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
