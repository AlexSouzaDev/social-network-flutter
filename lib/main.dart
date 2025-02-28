import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:socialnetworkflutter/themes/theme_provider.dart';
import 'pages/home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme:
          Provider.of<ThemeProvider>(
            context,
          ).themeData, // Set the theme of the app
    );
  }
}
