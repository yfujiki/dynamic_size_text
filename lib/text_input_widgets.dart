import 'package:flutter/material.dart';

class TextInputWidgetsTab extends StatelessWidget {
  const TextInputWidgetsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        const SizedBox(height: 16),
        const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'TextField widget',
          ),
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'TextFormField widget',
          ),
        ),
      ]),
    );
  }
}
