import 'package:flutter/material.dart';
import 'package:inputfield/homepage.dart';
import 'package:inputfield/pages/increment_page.dart';
import 'package:inputfield/pages/theme_home.dart';
import 'package:inputfield/scroll_items.dart';
import 'package:inputfield/shop.dart';
import 'package:inputfield/theme/theme.dart';
import 'package:inputfield/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
    ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const IncrementPage(),
      theme:Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
