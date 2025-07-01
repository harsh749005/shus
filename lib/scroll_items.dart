import 'package:flutter/material.dart';
import 'package:inputfield/models/sqaure.dart';

class ScrollItems extends StatefulWidget {
  const ScrollItems({super.key});

  @override
  ScrollItemsState createState() => ScrollItemsState();
}

class ScrollItemsState extends State<ScrollItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: 
      Text("Scroll Page")
      ),
      body: ListView(
        
        children: [

          Sqaure(),
          Sqaure(),
          Sqaure(),
          Sqaure(),
          Sqaure(),
          Sqaure(),
          Sqaure(),
          Sqaure(),
          Sqaure(),
          Sqaure(),
        ],

      ),
    );
  }
}
