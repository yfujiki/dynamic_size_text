import 'package:dynamic_size_text/exception_widgets_tab.dart';
import 'package:flutter/material.dart';

import 'hybrid_widgets_tab.dart';
import 'standard_widgets_tab.dart';
import 'string_widgets_tab.dart';
import 'text_input_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Tab Bar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  String _title = 'Strings defined in its own widgets';

  final List<Widget> _children = const [
    StringWidgetsTab(),
    StandardWidgetsTab(),
    HybridWidgetsTab(),
    TextInputWidgetsTab(),
    ExceptionWidgetsTab()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;

      switch (index) {
        case 0:
          _title = 'Strings defined in its own widgets';
          break;
        case 1:
          _title = 'Strings defined in child widgets';
          break;
        case 2:
          _title = 'Strings defined in either way';
          break;
        case 3:
          _title = 'String input widgets';
          break;
        default:
          _title = 'Exception widgets';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.text_fields),
            label: 'String',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.home),
            label: 'Standard',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.soup_kitchen),
            label: 'Hybrid',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.edit),
            label: 'Input',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.import_export),
            label: 'Exception',
          ),
        ],
      ),
    );
  }
}
