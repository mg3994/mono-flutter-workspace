import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:core_ui/core_ui.dart';
import 'package:l10n/l10n.dart';
import 'package:blog/blog.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const BlogStoreApp());
}

/// Composition Root Application for BlogStore.
class BlogStoreApp extends StatelessWidget {
  const BlogStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BlogStore',
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.system,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const BlogScreen(),
    );
  }
}
