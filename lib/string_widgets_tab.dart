import 'package:flutter/material.dart';

class StringWidgetsTab extends StatelessWidget {
  const StringWidgetsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(height: 16),
          Text("Text widget", style: TextStyle(fontSize: 16)),
          SizedBox(height: 16),
          SelectableText("SelectableText widget",
              style: TextStyle(fontSize: 24)),
          SizedBox(height: 16),
          Tooltip(
            height: 100,
            message: "Tooltip",
            child: Text(
              "I show a tooltip, long press me",
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
