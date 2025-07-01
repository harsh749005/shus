import 'package:flutter/material.dart';
import 'package:inputfield/models/sqaure.dart';

class ScrollItems extends StatelessWidget {
  ScrollItems({super.key});
  final List _post = ['post 1', 'post2', 'post3','post4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scroll Page")),
      body: ListView.builder(
        itemCount: _post.length,
        itemBuilder: (context, index) {
          return Sqaure();
        },
      ),
    );
  }
}
