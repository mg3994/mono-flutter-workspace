import 'package:flutter/material.dart';
import 'package:blog/blog.dart';

void main() {
  runApp(const BlogStoreApp());
}

class BlogStoreApp extends StatelessWidget {
  const BlogStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BlogStore',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.deepPurple),
      home: const BlogScreen(),
    );
  }
}
