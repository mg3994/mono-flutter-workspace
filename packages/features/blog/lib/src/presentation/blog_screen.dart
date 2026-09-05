import 'package:flutter/material.dart';
import 'package:core_ui/core_ui.dart';

/// Presentation widget for Blog feature.
class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BlogStore')),
      body: Center(
        child: AppButton(label: 'Explore Posts', onPressed: () {}),
      ),
    );
  }
}
