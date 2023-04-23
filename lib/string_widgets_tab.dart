import 'package:flutter/material.dart';

import 'custom_controls/my_selectable_text.dart';
import 'custom_controls/my_text.dart';
import 'custom_controls/my_tooltip.dart';

class StringWidgetsTab extends StatelessWidget {
  const StringWidgetsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(height: 16),
          MyText("Text widget", style: TextStyle(fontSize: 16)),
          SizedBox(height: 16),
          MySelectableText("SelectableText widget",
              style: TextStyle(fontSize: 24)),
          SizedBox(height: 16),
          MyTooltip(
            height: 100,
            message: "Tooltip",
            textStyle: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
            child: MyText(
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
