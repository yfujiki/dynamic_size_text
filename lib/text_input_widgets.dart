import 'package:flutter/material.dart';

import 'my_text_field.dart';
import 'my_text_form_field.dart';

class TextInputWidgetsTab extends StatelessWidget {
  const TextInputWidgetsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: const [
        SizedBox(height: 16),
        MyTextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'TextField widget',
          ),
        ),
        SizedBox(height: 16),
        MyTextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'TextFormField widget',
          ),
        ),
      ]),
    );
  }
}
