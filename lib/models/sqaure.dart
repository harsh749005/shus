import 'package:flutter/material.dart';

class Sqaure extends StatelessWidget {
  const Sqaure({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(height: 100, color: Colors.deepPurple[300]),
    );
  }
}
