import 'package:flutter/material.dart';
import 'package:flutter_test_edited/pages/list_page/list_provider.dart';
import 'package:provider/provider.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ListPageProvider(context: context),
      builder: (context, child) => Scaffold(
        body: Consumer<ListPageProvider>(
          builder: (context, provider, child) => ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: provider.length(),
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    provider.name(index),
                    style: const TextStyle(fontSize: 22.0),
                  ),
                  Text(
                    'Возраст: ${provider.age(index)}',
                    style: const TextStyle(fontSize: 18.0),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
