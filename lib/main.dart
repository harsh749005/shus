import 'package:flutter/material.dart';
import 'package:inputfield/homepage.dart';
import 'package:inputfield/pages/theme_home.dart';
import 'package:inputfield/scroll_items.dart';
import 'package:inputfield/shop.dart';
import 'package:inputfield/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const ThemeHome(),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}
