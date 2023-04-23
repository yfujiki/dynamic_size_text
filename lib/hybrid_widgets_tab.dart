import 'package:flutter/material.dart';

import 'custom_controls/my_text.dart';

class HybridWidgetsTab extends StatefulWidget {
  const HybridWidgetsTab({super.key});

  @override
  State<HybridWidgetsTab> createState() => _HybridWidgetsTabState();
}

class _HybridWidgetsTabState extends State<HybridWidgetsTab>
    with SingleTickerProviderStateMixin {
  late TabController _tabBarController;

  @override
  void initState() {
    _tabBarController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Column(
            children: [
              const SizedBox(height: 16),
              TabBar(
                labelColor: Colors.red[400],
                unselectedLabelColor: Colors.black87,
                tabs: const [
                  Tab(
                    text: "Tab defined by a string",
                  ),
                  Tab(
                    child: MyText(
                      "Tab defined by a Text widget",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
                controller: _tabBarController,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
