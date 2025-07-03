import 'package:flutter/material.dart';

class IncrementPage extends StatefulWidget {
  const IncrementPage({super.key});

  @override
  IncrementPageState createState() => IncrementPageState();
}

class IncrementPageState extends State<IncrementPage> {
   String name = "harsh2461";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter Page")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text("Hello, ${name.isEmpty ? "Guest":name}", style: TextStyle(fontSize: 24)),
            ),
          ],
        ),
      ),
    );
  }
}
