import 'package:flutter/material.dart';
import 'package:inputfield/models/button.dart';
import 'package:inputfield/models/mybox.dart';
import 'package:inputfield/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeHome extends StatelessWidget {
  const ThemeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Mybox(
          color: Theme.of(context).colorScheme.primary,
          child: MyButton(
            color: Theme.of(context).colorScheme.secondary,
            onTap: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
          ),
        ),
      ),
    );
  }
}
