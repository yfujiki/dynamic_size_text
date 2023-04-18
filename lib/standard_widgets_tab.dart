import 'package:flutter/material.dart';

class StandardWidgetsTab extends StatelessWidget {
  const StandardWidgetsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
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
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'TextSpan ',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'widget',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
