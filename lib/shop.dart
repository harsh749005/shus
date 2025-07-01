 import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  ShopState createState() => ShopState();
}

class ShopState extends State<Shop> {
  final TextEditingController _shopController = TextEditingController();

  String shopName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shop")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello, ${shopName.isEmpty ? 'Guest' : shopName}!"),
            // SizedBox(),
            TextField(
              controller: _shopController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter shop name",
                labelText: "Shop Name",
                suffix: IconButton(
                  onPressed: () {
                    _shopController.clear();
                  },
                  icon: Icon(Icons.clear),
                ),
              ),
            ),

            //button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  shopName = _shopController.text;
                });
                _shopController.clear();
              },
              child: Text("Press Me"),
            ),
          ],
        ),
      ),
    );
  }
}