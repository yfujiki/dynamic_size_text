import 'package:flutter/material.dart';

import 'custom_controls/my_text.dart';

class StandardWidgetsTab extends StatelessWidget {
  const StandardWidgetsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 16),
        TextButton(
          child: const Text("TextButton widget"),
          onPressed: () {
            // ignore: avoid_print
            print("Button tapped");
          },
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          child: const Text("ElevatedButton widget"),
          onPressed: () {
            // ignore: avoid_print
            print("Button tapped");
          },
        ),
        const SizedBox(height: 16),
        const ListTile(
          leading: Icon(Icons.list),
          title: Text("ListTile widget"),
          tileColor: Colors.grey,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
