import 'package:flutter/material.dart';

class HybridWidgetsTab extends StatelessWidget {
  const HybridWidgetsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Column(
            children: const [
              SizedBox(height: 16),
              Tab(
                text: "Tab",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
