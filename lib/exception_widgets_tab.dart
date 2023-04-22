import 'package:flutter/material.dart';

class ExceptionWidgetsTab extends StatelessWidget {
  const ExceptionWidgetsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
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
      ),
    );
  }
}
